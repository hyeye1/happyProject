<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
            margin-top: 50px;
            margin-left: 250px;
            margin-bottom: 20px;
            border: 1px solid white;
            width:800px;
    }
    .listArea{
        border: 1px solid black;
        text-align: center;
    }
    .listArea>tbody>tr:hover{
        cursor:pointer;
        background: rgb(249, 219, 122);
        color: white;
    }
    #text1{font-size:x-large; font-weight: bold;}
    #text2{color:rgb(241, 196, 15); font-weight: bold;}
    #btn{
            width: 70px;
            height: 30px;
            font-size: small;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
    }
    #btn:hover{background-color: rgb(249, 219, 122); color:white;}
    .button{margin-left: 170px;}
    .outer2{margin-right: 250px;}
    .page{margin-left: 45%; font-size: medium;}
    #updateForm>table{
        border: 1px solid gray; 
        background-color: rgb(249, 219, 122);
        padding: 10px;}
    #updateForm input, #updateForm textarea
    {
        width: 100%;
        box-sizing: border-box;
    }
</style>

</head>
<body>
	<div class="outer">
        <span id="text1">공지사항</span>
        <span id="text1"style="color:rgb(241, 196, 15)">수정하기</span>
        <hr>
        <form id="updateForm" action="" method="POST">
        	<input type="hidden" name="nno" value="">
            <table>
                <tr>
                    <th width="50">제목</th>
                    <td colspan="3" width="400">
                        <input type="text" name="title" required value="공지사항 수정제목">
                    </td>
                </tr>
                <tr>
                    <th>내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <textarea name="content" rows="10" style="resize: none;" required>공지사항 수정내용</textarea>
                    </td>
                </tr>
            </table>
            <br>
            <div class="button">
                <button id="btn" type="submit">수정하기</button>
                <button id="btn" type="button" onclick="history.back();">뒤로가기</button>
            </div>
        </form>
    </div>
        
</body>
</html>