import * as React from 'react';
// state

// redux

// router
import { NavLink, useParams } from 'react-router-dom';
import PrivateRoute from '../../common/routes/PrivateRoute';



// component
import LeftProfile from './LeftProfile/LeftProfile';
import RightProfile from './RightProfile/RightProfile';
import ProfileBoardSummeryList from './RightProfile/profileBoardSummery/ProfileBoardSummeryList';

// data import


// css
import classes from './MyPage.module.scss';


// mui
import { Card } from '@mui/material';


const activeStyle = {
  fontWeight:'900',
  color:'red',
 }



const MyPage = () => {
  const params = useParams();

  return (
    <Card className={classes.profile_wrapper}>
      <LeftProfile userId={params.userId}/>
      <div>
        <NavLink to={`/profile/${params.userId}`} activeStyle={activeStyle}>프로필
          {/* <RightProfile userId={params.userId} /> */}
        </NavLink>
        <NavLink  to={`/profile/${params.userId}/board`} activeStyle={activeStyle}>게시글</NavLink>
      </div>
      <PrivateRoute path="" component={RightProfile}></PrivateRoute>
      <PrivateRoute path="/board" component={ProfileBoardSummeryList}></PrivateRoute>
      
    </Card>
  
  );
};

export default MyPage;
