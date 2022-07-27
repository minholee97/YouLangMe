import { useEffect, useRef, useState } from 'react';
import { useHistory, useParams } from 'react-router-dom';
// redux
import { useDispatch, useSelector } from 'react-redux';
import { modalActions } from '../../../../common/UI/Modal/modalSlice';
import { createBoardActions } from '../createBoardSlice';
// API
import { createBoard, fetchBoard, updateBoard } from '../../boardAPI';

// component
import BoardImageUploadModal from './imageModal/BoardImageUploadModal';
// mUI
import AddAPhotoIcon from '@mui/icons-material/AddAPhoto';
import BorderColorIcon from '@mui/icons-material/BorderColor';
import HighlightOffIcon from '@mui/icons-material/HighlightOff';
// css
import classes from './CreateBoardForm.module.scss';
// static data
import { MAX_IMAGE_LIMIT } from '../data';

// 어떤 방식으로던 이동해옴, 라우터로부터 수정인지 생성인지 알아냄
const API_URL = 'http://127.0.0.1:8080/';

const CreateBoardForm = () => {
  const boardId = useParams().boardId;

  const [boardInfo, setBoardInfo] = useState(null);
  const [isLoading, setIsLoading] = useState(false);
  const [images, setImages] = useState([]);
  const contentRef = useRef();
  const isImageUploadVisible = useSelector((state) => state.modal.isVisible);
  const dispatch = useDispatch();
  const history = useHistory();
  const imageLimit = MAX_IMAGE_LIMIT;

  const convertURLtoFile = async (url) => {
    const response = await fetch(url);
    const data = await response.blob();
    const ext = url.split('.').pop(); // url 구조에 맞게 수정할 것
    const filename = url.split('/').pop(); // url 구조에 맞게 수정할 것
    const metadata = { type: `image/${ext}` };
    const file = new File([data], filename, metadata);

    Object.assign(file, { preview: URL.createObjectURL(file) });
    return file;
  };
  useEffect(() => {
    console.log('didmount');
    if (boardId) {
      (async () => {
        setIsLoading(true);
        const tmpInfo = await fetchBoard(boardId);
        // console.log(tmpInfo);
        setBoardInfo(() => tmpInfo.boardDetail);
        const imageSrcs = tmpInfo.boardDetail.imgList;
        const convertedList = await Promise.all(
          imageSrcs.map((item) => {
            const url = `${API_URL}image/board/${item}`;
            return convertURLtoFile(url);
          })
        );
        console.log(convertedList); //(2) [Promise, Promise] 동기 비동기 문제 : promise.all
        setImages((prevState) => prevState.concat(convertedList));
        setIsLoading(false);
      })();
    }
  }, [boardId]);

  const addPhotoHander = () => {
    dispatch(
      modalActions.onModal({
        backDropClickClose: false,
        backDropTransparent: true,
      })
    );
  };

  const modalImageLoadHandler = (files) => {
    // console.log('제출 form에서 보여줘야함', files);
    setImages((prevState) => prevState.concat(files));
  };
  const imageRemoveHandler = (event) => {
    const fileIdx = Number(event.target.dataset.index);
    dispatch(createBoardActions.removeFileCnt());
    setImages((state) =>
      state.filter((file, index) => {
        return index !== fileIdx;
      })
    );
  };
  const boardUploadHandler = async (event) => {
    event.preventDefault();
    const uploadContent = contentRef.current.value;
    const uploadImages = images;
    console.log(uploadContent, uploadImages);
    let data;
    if (!boardId) {
      data = await createBoard(uploadContent, uploadImages);
    } else {
      data = await updateBoard(boardId, uploadContent, uploadImages);
    }

    if (data.success) {
      history.push('/main');
    } else {
      alert('오류가 발생했습니다.');
    }
  };
  const cancelHandler = (event) => {
    history.goBack();
  };

  return (
    <>
      {isImageUploadVisible && (
        <BoardImageUploadModal loadImageFromModal={modalImageLoadHandler} />
      )}
      {!isLoading ? (
        <div className={classes.wrapper}>
          <div className={classes.container}>
            <div className={classes.title}>
              <BorderColorIcon />
              {!boardInfo ? '새 게시물' : '게시물 수정'}
            </div>
            <div className={classes.formContainer}>
              <div className={classes.userInfo}>
                <div>
                  <img
                    src="http://www.geonames.org/flags/x/kr.gif"
                    className={classes.flag}
                    alt="국기"
                  />
                  <img
                    src="https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg"
                    className={classes.profile}
                    alt="프로필 이미지 작게"
                  />
                </div>
                <h3>이름</h3>
              </div>
              <hr />
              <form onSubmit={boardUploadHandler}>
                <textarea
                  name=""
                  id=""
                  cols="80"
                  rows="10"
                  placeholder="게시글을 작성해주세요"
                  required
                  maxLength={400}
                  ref={contentRef}
                  defaultValue={boardInfo ? boardInfo.contents : ''}
                />

                <div className={classes.imageAndButtonContainer}>
                  <div className={classes.imageContainer}>
                    {images.length !== 0 &&
                      images.map((file, index) => {
                        // console.log(file); //promise file이 반환되는 문제 해결 필요
                        return (
                          <div key={file.preview} className={classes.fileImage}>
                            <HighlightOffIcon
                              className={classes.removeImgButton}
                              data-index={index}
                              onClick={imageRemoveHandler}
                            />
                            <img src={file.preview} alt="" />
                          </div>
                        );
                      })}
                    <div
                      className={classes.addPhotoButton}
                      onClick={addPhotoHander}
                    >
                      <AddAPhotoIcon />
                      <div
                        className={classes.extraImage}
                      >{`${images.length} / ${imageLimit}`}</div>
                    </div>
                  </div>
                  <div className={classes.buttonContainer}>
                    <button type="button" onClick={cancelHandler}>
                      취소
                    </button>
                    <button type="submit">
                      {!boardInfo ? '작성' : '글 수정'}
                    </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      ) : (
        <div>is Loading...</div>
      )}
    </>
  );
};

export default CreateBoardForm;

// {/* {!boardInfo ? */}
//       // : boardInfo.imgList.map((image) => (
//       //     <img
//       //       key={image}
//       //       src={`${API_URL}image/board/${image}`}
//       //       alt="게시판 수정 시 이미지"
//       //     />
//         ))}
