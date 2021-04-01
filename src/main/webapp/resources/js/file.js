	function fileCheck(obj) {
		pathPoint = obj.value.lastIndexOf(".");
		filePoint = obj.value.substring(pathPoint+1, obj.length);
		fileType = filePoint.toLowerCase();
		if(fileType == "jpg" || fileType == "gif" || fileType == "png" || 
				fileType == "jpeg" || fileType == "bmp" || fileType == "svg"){	
		} else {
			alert("이미지 파일만 선택 가능합니다.");

			//input 파일 초기화
			document.getElementById("file").value = null;
                
                return false;
			}
		}