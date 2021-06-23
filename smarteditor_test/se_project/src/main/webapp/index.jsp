<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Smart Editor Test</title>
<link href="css/admin.css" rel="stylesheet" />
<link href="css/main.css" rel="stylesheet" />
<script type="text/javascript" src="se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.0.min.js"></script>
</head>

<script type="text/javascript">
    var oEditors = [];
    $(document).ready(function(){
    	
    	nhn.husky.EZCreator.createInIFrame({
            oAppRef : oEditors,
            elPlaceHolder : "se2Body", //textarea���� ������ id�� ��ġ.
            sSkinURI : "se2/SmartEditor2Skin.html",
            htParams : {
                // ���� ��� ���� 
                bUseToolbar : true,
                // �Է�â ũ�� ������ ��� ���� 
                bUseVerticalResizer : true,
                // ��� ��(Editor | HTML | TEXT) ��� ���� 
                bUseModeChanger : true,
                bSkipXssFilter : true,
                fOnBeforeUnload : function(){
                    
                }
            },

            fCreator : "createSEditor2"
        });
    	
    });
    
    function sendit() {
    	
    	oEditors.getById["se2Body"].exec("UPDATE_CONTENTS_FIELD", []);
    	
		var wlist = [ ".ppt", ".pptx", ".doc", ".docx", ".hwp", ".xls", ".xlsx", ".pdf", ".jpg", ".png", ".gif", ".bmp", ".txt" ];

		var extChk = -1;

		if (document.Frm.head.value == "") {
			alert("������ �Է��Ͽ� �ֽʽÿ�")
			document.Frm.head.focus();
			return;
		}

		if (document.Frm.se2Body.value == "") {
			alert("������ �Է��Ͽ� �ֽʽÿ�")
			document.Frm.se2Body.focus();
			return;
		}

		for (var i = 1; i <= 5; i++) {
			var file = $("#file" + i).val();

			if (file != "" && file.slice(file.indexOf(".") + 1).toLowerCase() != "") {
				extChk = wlist.indexOf("." + file.slice(file.indexOf(".") + 1).toLowerCase());

				if (extChk < 0) {
					alert("÷�������� ���� Ȯ���ڰ� �ƴմϴ�.");
					return;
				}
			}
		}

		document.Frm.action = "sendCheck.jsp";
		document.Frm.target="_new";
		document.Frm.submit();
	}
    
    
</script>

<body>
	<div class="notice">
		<p class="title">��������</p>
		<div class="board">
			<form name="Frm" method="post">
				<table width="100%" border="0" cellspacing="0" cellpadding="0" class="mt20">
					<colgroup>
						<col width="20%">
						<col width="80%">
					</colgroup>
					<tbody>
						<tr>
							<th class="left">����</th>
							<td>
								<input type="text" id="head" name="head" class="title">
							</td>
						</tr>
						<tr>
							<th class="left">÷������</th>
							<td>
								<p class="point">
									�� �����̹��� ���ϸ��� �ѱ��� ��� ��ǻ�Ϳ� ���� ������ ���� ���ϴ� ��찡<br />&nbsp;&nbsp;&nbsp;&nbsp; �߻��ϹǷ� �̹��� ���ϸ��� �ǵ��� �������� �����Ͽ� �÷� �ֽñ� �ٶ��ϴ�.
								</p>
								<div class="fileInput mt10">
									<strong>÷��1</strong> &nbsp;
									<input type="text" class="file" value="���õ� ���� ����" id="file_txt1" name="file_txt1" readonly="readonly">
									<label class="btnSelect">���� ����<input type="file" id="file1" name="file" onchange="document.getElementById('file_txt1').value=this.value"></label>
								</div>
								<div class="fileInput mt10">
									<strong>÷��2</strong> &nbsp;
									<input type="text" class="file" value="���õ� ���� ����" id="file_txt2" name="file_txt2" readonly="readonly">
									<label class="btnSelect">���� ����<input type="file" id="file2" name="file" onchange="document.getElementById('file_txt2').value=this.value"></label>
								</div>
								<div class="fileInput mt10">
									<strong>÷��3</strong> &nbsp;
									<input type="text" class="file" value="���õ� ���� ����" id="file_txt3" name="file_txt3" readonly="readonly">
									<label class="btnSelect">���� ����<input type="file" id="file3" name="file" onchange="document.getElementById('file_txt3').value=this.value"></label>
								</div>
								<div class="fileInput mt10">
									<strong>÷��4</strong> &nbsp;
									<input type="text" class="file" value="���õ� ���� ����" id="file_txt4" name="file_txt4" readonly="readonly">
									<label class="btnSelect">���� ����<input type="file" id="file4" name="file" onchange="document.getElementById('file_txt4').value=this.value"></label>
								</div>
								<div class="fileInput mt10">
									<strong>÷��5</strong> &nbsp;
									<input type="text" class="file" value="���õ� ���� ����" id="file_txt5" name="file_txt5" readonly="readonly">
									<label class="btnSelect">���� ����<input type="file" id="file5" name="file" onchange="document.getElementById('file_txt5').value=this.value"></label>
								</div>
							</td>
						</tr>
						<tr>
							<th class="left">����</th>
							<td>
								<textarea id="se2Body" name="se2Body" class="createSEditor2" style="width:90%"></textarea>
							</td>
						</tr>
					</tbody>
				</table>
				<ul class="btnList">
					<li>
						<a href="javascript:sendit()" class="solidBtn">����</a>
					</li>
					<li>
						<a href="javascript:fn_list();" class="lineBtn">���</a>
					</li>
				</ul>
			</form>
		</div>
	</div>
</body>

</html>


