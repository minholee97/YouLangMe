import React, { Component } from 'react';
import IconButton from '@material-ui/core/IconButton';
import Fab from '@material-ui/core/Fab';
import HighlightOff from '@material-ui/icons/HighlightOff';
import Send from '@material-ui/icons/Send';

import './ChatComponent.scss';
import { Tooltip } from '@material-ui/core';

// youlangme custom
import ChatContextMenu from './components/ChatContextMenu';
import MessageInput from './components/MessageInput';
import ReplyMessageInput from './components/ReplyMessageInput';
import MsgBoxNormal from './components/MsgBoxNormal';
import MsgBoxReply from './components/MsgBoxReply';

export default class ChatComponent extends Component {
  constructor(props) {
    super(props);
    this.state = {
      messageList: [],
      message: '',
      // youlangmeCustum
      // 메뉴 관련 state 4
      isCMenuVisible: false,
      clX: null,
      clY: null,
      targetMsgIdx: 0,
      // 답글 관련 state 2
      originalMessage: '',
      isReply: false,
    };
    this.chatScroll = React.createRef();

    this.handleChange = this.handleChange.bind(this);
    this.handlePressKey = this.handlePressKey.bind(this);
    this.close = this.close.bind(this);
    this.sendMessage = this.sendMessage.bind(this);
    // youlangme custom
    // 메뉴 보여주기 위해 이벤트
    this.showContextMenu = this.showContextMenu.bind(this);
    // 자식 contextMenu의 요청
    this.modifyHandler = this.modifyHandler.bind(this);
    this.copyHandler = this.copyHandler.bind(this);
    this.translateHandler = this.translateHandler.bind(this);
    // 댓글 답글 컴포넌트 요청
    this.handleReply = this.handleReply.bind(this);
  }

  componentDidMount() {
    this.props.user
      .getStreamManager()
      .stream.session.on('signal:chat', (event) => {
        const data = JSON.parse(event.data);
        let messageList = this.state.messageList;
        messageList.push({
          connectionId: event.from.connectionId,
          nickname: data.nickname,
          message: data.message,
          originalMessage: data.originalMessage,
        });
        const document = window.document;
        setTimeout(() => {
          const userImg = document.getElementById(
            'userImg-' + (this.state.messageList.length - 1)
          );
          const video = document.getElementById('video-' + data.streamId);
          const avatar = userImg.getContext('2d');
          avatar.drawImage(video, 200, 120, 285, 285, 0, 0, 60, 60);
          this.props.messageReceived();
        }, 50);
        this.setState({ messageList: messageList });
        this.scrollToBottom();
      });
    document.addEventListener('click', () => {
      this.setState({ isCMenuVisible: false });
    });
  }

  handleChange(val) {
    this.setState({ message: val });
  }

  handlePressKey(event) {
    this.sendMessage();
  }

  sendMessage() {
    console.log(this.state.message);
    if (this.props.user && this.state.message) {
      let message = this.state.message.replace(/ +(?= )/g, '');
      let originalMessage = this.state.originalMessage.replace(/ +(?= )/g, '');
      if (message !== '' && message !== ' ') {
        const data = {
          message: message,
          originalMessage: originalMessage,
          nickname: this.props.user.getNickname(),
          streamId: this.props.user.getStreamManager().stream.streamId,
        };
        this.props.user.getStreamManager().stream.session.signal({
          data: JSON.stringify(data),
          type: 'chat',
        });
      }
    }
    this.setState({ message: '' });
  }

  scrollToBottom() {
    setTimeout(() => {
      try {
        this.chatScroll.current.scrollTop =
          this.chatScroll.current.scrollHeight;
      } catch (err) {}
    }, 20);
  }

  close() {
    this.props.close(undefined);
  }
  //---------------------- youlangme custom ------------------------------

  showContextMenu(event) {
    event.preventDefault();
    const idx = event.currentTarget.dataset.idx;
    this.setState({
      clX: event.clientX,
      clY: event.clientY,
      isCMenuVisible: true,
      targetMsgIdx: idx,
    });
  }
  translateHandler(idx) {
    console.log(idx + '번 말풍선 번역요청');
  }
  copyHandler(idx) {
    console.log(idx + '번 말풍선 복사요청');
  }
  modifyHandler(idx) {
    this.setState({
      originalMessage: this.state.messageList[idx].message,
      isReply: true,
    });
  }
  handleReply() {
    this.sendMessage();
    this.setState({
      originalMessage: '',
      isReply: false,
    });
  }
  render() {
    const styleChat = { display: this.props.chatDisplay };
    return (
      <div id="chatContainer">
        <div id="chatComponent" style={styleChat}>
          <div id="chatToolbar">
            <span>
              {this.props.user.getStreamManager().stream.session.sessionId} -
              CHAT
            </span>
            <IconButton id="closeButton" onClick={this.close}>
              <HighlightOff color="secondary" />
            </IconButton>
          </div>
          <div className="message-wrap" ref={this.chatScroll}>
            {this.state.messageList.map((data, i) => (
              <>
                <div
                  key={i}
                  id="remoteUsers"
                  className={
                    'message' +
                    (data.connectionId !== this.props.user.getConnectionId()
                      ? ' left'
                      : ' right')
                  }
                >
                  <canvas
                    id={'userImg-' + i}
                    width="60"
                    height="60"
                    className="user-img"
                  />
                  <div
                    className="msg-detail"
                    onContextMenu={this.showContextMenu}
                    data-idx={i}
                  >
                    <div className="msg-info">
                      <p> {data.nickname}</p>
                    </div>
                    <div className="msg-content">
                      <span className="triangle" />
                      {data.originalMessage.length > 0 ? (
                        <MsgBoxReply
                          message={data.message}
                          originalMessage={data.originalMessage}
                        />
                      ) : (
                        <MsgBoxNormal className="text" message={data.message} />
                      )}
                    </div>
                  </div>
                </div>
              </>
            ))}
          </div>
          {!this.state.isReply ? (
            <MessageInput
              messageVal={this.state.message}
              handleChange={this.handleChange}
              handleKeyPress={this.handlePressKey}
              sendBtnClick={this.sendMessage}
            />
          ) : (
            <ReplyMessageInput
              originalMessage={this.state.originalMessage}
              messageVal={this.state.message}
              handleChange={this.handleChange}
              handleKeyPress={this.handlePressKey}
              sendReplyBtnClick={this.handleReply}
            />
          )}
          {/* <div id="messageInput">
            <input
              placeholder="Send a messge"
              id="chatInput"
              value={this.state.message}
              onChange={this.handleChange}
              onKeyPress={this.handlePressKey}
            />
            <Tooltip title="Send message">
              <Fab size="small" id="sendButton" onClick={this.sendMessage}>
                <Send />
              </Fab>
            </Tooltip>
          </div> */}
          {this.state.isCMenuVisible && (
            <ChatContextMenu
              clientX={this.state.clX}
              clientY={this.state.clY}
              target={this.state.targetMsgIdx}
              modify={this.modifyHandler}
              copy={this.copyHandler}
              translate={this.translateHandler}
            />
          )}
        </div>
      </div>
    );
  }
}
