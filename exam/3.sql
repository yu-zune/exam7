-- 3. 아래 문항을 코딩하세요 지시된 사항외에 나머지는 자유롭게 하세요
-- 3-1) 부서별 급여 합계 구합니다.(group by dno)  
-- 위에서 구한 부서별 급여합계를 모두 더한 총합도 구합니다.
-- 파이프라인 형제 집계를 사용하세요
POST /employee/_search
 {
  "size": 0,
  "aggs": {
    "by_department": {
      "terms": {
        "field": "dno"
 },
      "aggs": {
        "salary_sum": {
          "sum": {
            "field": "salary"
 }
 }
 }
    "total_salary_sum": {
      "sum_bucket": {                            
        "buckets_path": "by_department>salary_sum"
 }
 }
 }
 }


-- 3-2) QNA 오라클 테이블을 그대로 복제해서 ElasticSearch에 인덱스로 만드는 로그스태쉬 conf 파일을 작성하세요
-- qna.conf

-- 3-3) FAQ 오라클 테이블을 그대로 복제해서 ElasticSearch에 인덱스로 만드는 로그스태쉬 conf 파일을 작성하세요
-- faq.conf

