-- 2. dept 전체조회를 하려고 합니다.
--   querydsl 로 작성하세요

POST /department/_search
{
  "query": {
    "match_all": {}
  }
}

-- 수업시간에 항상 department index 로 했어서 그대로 짰고
-- 만약 인덱스가 dept 라면

POST /dept/_search
{
  "query": {
    "match_all": {}
  }
}
