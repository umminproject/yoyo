<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta charset="utf-8">
        <!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <!-- Bootstrap -->
        <link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
        <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
    </head>
    <body>
        <!-- 좌우측의 공간 확보 -->
        <div class="container" >
            <hr />
            <div class="row">
                <div class="col-md-10">
                    <table class="table table-condensed">
                        <thead>
                            <tr align="center">
                                <th width="10%" >제목:</th>
                                <th width="60%" style='font-size:20pt'>게시판 제목 입니다.</th>
                           		 <th>주제:
                                </th>
                                <th>주제
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>글쓴이:
                                </td>
                                <td>글쓴이 
                                </td>
                                 <td>작성일:
                                </td>
                                <td>
                                2014-12-15 04:45:23
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table id="coTable" class="table table-condensed"></table>
                    <table class="table table-condensed">
                        <tr>
                            <td>
                                <span class="form-inline" role="form">
                                    
                                        <textarea id="comment" class="form-control col-lg-12" style="width:100%" rows="4"></textarea>
                                </span>
                            </td>
                        </tr>
                    </table>
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <td>
                                    <span style='float:right'>
                                        <button type="button"  onclick="location.href='index'" id="list" class="btn btn-default">목록</button>
                                        <button type="button" id="modify" class="btn btn-default">수정</button>
                                        <button type="button" id="delete" class="btn btn-default">삭제</button>
                                    </span>
                                </td>
                            </tr>
                        </thead>
                    </table>
                    <script>
                    </script>
                </div>
            </div>
            <hr/>
        </div>    
    </body>
</html>