import { useState, useEffect, useRef } from 'react';
import { useHistory, useParams } from 'react-router-dom';
import { createdDateCal } from '../../func/commonFunctions';
// API
import {
  fetchBoardInfo,
  fetchCommentList,
  fetchLikeUsers,
  addComment,
  like,
  dislike,
  deleteBoard,
} from '../../boardAPI';
import Modal from '../../../../common/UI/Modal/Modal';
//components
import CommentListItem from './CommentListItem';
import LikeContainer from './LikeContainer';
import UserInfo from '../../../profile/UserInfo/UserInfo';
// mui
import CircularProgress from '@mui/material/CircularProgress';
import ChatBubbleOutlineIcon from '@mui/icons-material/ChatBubbleOutline';
import classes from './BoardDetailModal.module.scss';
const BoardDetail = (props) => {
  const [boardDetail, setBoardDetail] = useState(null);
  const [commentList, setCommentList] = useState([]);
  const [likeUsers, setLikeUsers] = useState([]);
  const [isLoading, setIsLoading] = useState(true);
  const [isLiked, setIsliked] = useState(false);
  const boardId = useParams().boardId;
  const API_URL = 'http://127.0.0.1:8080/';
  const commentRef = useRef();
  const history = useHistory();
  useEffect(() => {
    (async () => {
      const boardDetail = await fetchBoardInfo(boardId);
      if (!boardDetail) {
        history.replace({
          pathname: '/404',
          message: '존재하지 않는 게시물입니다.',
        });
      }

      const commentList = await fetchCommentList(boardId);
      const likeUsers = await fetchLikeUsers(boardId);

      // const likeUsers = boardInfo.likeUsers;
      const currentUserId = JSON.parse(localStorage.getItem('currentUser')).id;
      for (const iterator of likeUsers) {
        if (iterator.id === currentUserId) {
          setIsliked(true);
        }
      }
      // console.log(boardInfo);
      setBoardDetail(boardDetail);
      setCommentList(commentList);
      setLikeUsers(likeUsers);

      setIsLoading(false);
    })();
  }, [boardId]);

  const addCommentHandler = async (event) => {
    event.preventDefault();
    const newComment = commentRef.current.value;
    if (!newComment.trim().length) {
      return;
    }
    const response = await addComment(boardId, newComment);
    if (response) {
      // 댓글작성 후 comment 재 fetch
      const newCommentList = await fetchCommentList(boardId);
      setCommentList(() => {
        return [...newCommentList];
      });
    }
  };

  const likeHandler = async () => {
    const result = await like(boardId);
    if (result.success) {
      const currentUser = JSON.parse(localStorage.getItem('currentUser'));
      const addedUser = { id: currentUser.id, name: currentUser.name };
      setIsliked(true);
      setLikeUsers((prevState) => [...prevState, addedUser]);
    }
  };
  const dislikeHandler = async () => {
    const result = await dislike(boardId);
    if (result.success) {
      const currentUser = JSON.parse(localStorage.getItem('currentUser'));

      setIsliked(false);
      setLikeUsers((prevState) =>
        prevState.filter((user) => user.id !== currentUser.id)
      );
    }
  };
  const updateBoardHandler = () => {
    const currentUserId = JSON.parse(localStorage.getItem('currentUser')).id;
    if (currentUserId !== boardDetail.userId) {
      alert('부적절한 접근입니다.');
      return;
    }
    history.push(`/board/update/${boardId}`);
  };
  const deleteBoardHandler = async () => {
    const confirm = window.confirm('정말 삭제하시겠습니까?');
    if (!confirm) {
      return;
    }
    // delete API 요청
    const data = await deleteBoard(boardId);
    if (data.success === true) {
      history.push('/main');
    }
  };

  return (
    <>
      {isLoading ? (
        <div>
          <CircularProgress />
        </div>
      ) : (
        <Modal>
          <div className={classes.wrapper}>
            <div className={classes.boardHeader}>
              <UserInfo />

              <div className={classes.createdAt}>
                {createdDateCal(boardDetail.modifiedTime)}
              </div>
            </div>
            <div className={classes.main}>
              <div className={classes.photoContainer}>
                {boardDetail.imgList.map((image) => (
                  <img
                    key={image}
                    src={`${API_URL}image/board/${image}`}
                    alt="게시판 이미지"
                  />
                ))}
              </div>
              <div className={classes.contentContainer}>
                <p>{boardDetail.contents}</p>
              </div>
              <div className={classes.likeCommentCnt}>
                <div>
                  <LikeContainer
                    isLiked={isLiked}
                    like={likeHandler}
                    dislike={dislikeHandler}
                    likeUsers={likeUsers}
                  />
                </div>
                {/* <div>
                  <ChatBubbleOutlineIcon />
                  {commentList.length}
                </div> */}
              </div>
              <br />
            </div>
            <div className={classes.comment}>
              <div className={classes.header}>
                <ChatBubbleOutlineIcon />
                <div>댓글 {commentList.length}개 </div>
              </div>
              <div className={classes.commentInput}>
                <form onSubmit={addCommentHandler}>
                  <input
                    type="text"
                    placeholder="댓글을 작성해주세요"
                    ref={commentRef}
                  />
                  <button>게시</button>
                </form>
              </div>
              <div className={classes.commentContainer}>
                {commentList.map((comment) => (
                  <CommentListItem key={comment.id} commentInfo={comment} />
                ))}
              </div>
            </div>

            {boardDetail.userId ===
              JSON.parse(localStorage.getItem('currentUser')).id && (
              <div className={classes.authOptionContainer}>
                <button type="button" onClick={updateBoardHandler}>
                  수정{' '}
                </button>
                <button type="button" onClick={deleteBoardHandler}>
                  삭제
                </button>
              </div>
            )}
          </div>
        </Modal>
      )}
    </>
  );
};

export default BoardDetail;
