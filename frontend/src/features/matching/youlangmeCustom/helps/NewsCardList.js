// react core
import { useState, useEffect } from 'react';

// API
import { fetchNationality, fetchNews } from '../../matchAPI';

// external module

// external component
import CircularProgress from '@mui/material/CircularProgress';

import ArrowBackIosIcon from '@mui/icons-material/ArrowBackIos';
import ArrowForwardIosIcon from '@mui/icons-material/ArrowForwardIos';
// custom component
import NewsCard from './NewsCard3';
// css
import classes from './NewsCardList.module.scss';
// static data
import { newsText } from '../../../../common/utils/data/nationalityData';

const NewsCardList = (props) => {
  const remoteUserId = props.remoteUserId;
  const [loading, setLoading] = useState(true);
  const [remoteUserNationality, setRemoteUserNationality] = useState(null);
  const [articles, setArticles] = useState([]);
  // const [loadedArticles, setLoadedArticles] = useState([]);
  const [page, setPage] = useState(0);
  const myNation = 'USA';
  useEffect(() => {
    (async () => {
      const oppoNation = await fetchNationality(remoteUserId);
      setRemoteUserNationality(oppoNation);
      // 내 국가 언어, 상대 국가 뉴스 받는 api
      const data = await fetchNews(myNation, oppoNation);
      console.log(data);
      setArticles(data.articles);
      setLoading(false);
    })();
  }, []);
  // useEffect(() => {
  //   setLoadedArticles(articles.slice(page, page + 4));
  // }, [articles, page]);
  const showPrev = () => {
    setPage((prev) => prev - 1);
  };
  const showNext = () => {
    setPage((prev) => prev + 1);
  };
  const openOriginHandler = (url) => {
    window.open(url, '', 'left=50,top=50,width=800,height=600');
    console.log(url);
  };
  return (
    <div className={classes.wrapper}>
      {loading ? (
        <div className={classes.loading}>
          <div>Now Loading....</div>
          <div>
            <CircularProgress />
          </div>
        </div>
      ) : (
        <div className={classes.wrapper}>
          <div className={classes.container}>
            <div className={classes.header}>
              <div>{newsText(myNation, remoteUserNationality)}</div>
              <div>
                {page !== 0 ? (
                  <div>
                    <ArrowBackIosIcon onClick={showPrev} />
                  </div>
                ) : (
                  <div>Start</div>
                )}
                {page !== 9 ? (
                  <div>
                    <ArrowForwardIosIcon onClick={showNext} />
                  </div>
                ) : (
                  <div>End</div>
                )}
              </div>
            </div>
            <div className={classes.main}>
              {articles.slice(page * 4, page * 4 + 4).map((article) => (
                <NewsCard
                  key={article.title}
                  article={article}
                  openOrigin={openOriginHandler}
                />
              ))}
            </div>
            <div className={classes.footer}></div>
          </div>
        </div>
      )}
    </div>
  );
};
export default NewsCardList;