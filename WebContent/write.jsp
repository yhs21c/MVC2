<%@ page language="java" contentType="text/html; charset=EUC-KR"    pageEncoding="utf-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<body>
<form action="insert.do" method="post" onsubmit="formCheck();">
제목 : <input type="text" name="title" /> <br/>
이름 : <input type="text" name="writer" /> <br/>
내용 : <textarea name="content" cols="30" rows="5" ></textarea><br/>
등록일 : <input type="text" name="regdate" /> <br/>
<input type="submit" />
</form>
<script>
function formCheck() {
    var title = document.forms[0].title.value;        // �ъ�⑺��湲� �쎈��濡� 蹂���瑜� ���명���� �댁��二쇨�,
    var writer = document.forms[0].writer.value;
    var regdate = document.forms[0].regdate.value;
    var content = document.forms[0].content.value;  // 異�媛��� - �곕�����ㅻ�� 媛��ы�⑸����. :)
 
    if (title == null || title == ""){                                    // null�몄� 鍮�援��� ��
        alert('null');                                   // 寃쎄�李쎌�� ���곌�
        document.forms[0].title.focus();                           // �대�뱁��洹몄�� �ъ빱�ㅻ�� 以���
        return false;                                                     // false瑜� 由ы�댄�⑸����.
    }
 
    if (writer == null ||  writer  == ""){          
        alert('null'); 
        document.forms[0].writer.focus();                      
        return false;               
    }else if(writer.match(/^(\w+)@(\w+)[.](\w+)$/ig) == null){
        alert('spec check'); 
        document.forms[0].writer.focus();                      
        return false; 
    }
 
    if (regdate == null || regdate == "" ){                            
 
        alert('null');   
        document.forms[0].regdate.focus();                      
        return false;            
 
    }else if(regdate.match(/^\d\d\d\d\d\d+$/ig)   == null){
        alert('spec check'); 
        document.forms[0].regdate.focus();                      
        return false; 
    }
 
} 
</script>
</body>
</html>