import axios from 'axios';
const API_URL = 'http://127.0.0.1:8080/';

export const createBoard = async (content, images) => {
  const accessToken = JSON.parse(localStorage.getItem('user')).accessToken;
  // console.log('boardAPI post 게시글 생성요청');
  const formData = new FormData();

  formData.set('pics', images);
  for (let i = 0; i < images.length; i++) {
    formData.append('pics', images[i]);
  }
  formData.append('contents', content);

  // key-val pair 확인
  for (let pair of formData.entries()) {
    console.log(pair[0], pair[1]);
  }

  try {
    const response = await axios.post(API_URL + `board`, formData, {
      headers: {
        'Content-Type': 'multipart/form-data',
        'X-Auth-Token': accessToken,
      },
    });
    // console.log('board post api', response.data);
    return response.data;
  } catch (error) {
    console.log(error);
  }
};
