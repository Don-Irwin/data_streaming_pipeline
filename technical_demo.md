

```python
%%capture output
!python3 -m pip install git+https://github.com/dropbox/PyHive.git >/dev/null
```


```python
import warnings
warnings.filterwarnings('ignore')
from utility import Utility as util
```


```python
import pandas as pd
pd.options.display.max_columns = None
#pd.set_option('display.max_colwidth', None)
#pd.set_option('display.max_rows', None)
import warnings
import time
import os
#import pandasql as psql
from IPython.core.display import Markdown as md
warnings.filterwarnings('ignore')
#from libraries.project_reports import project_reports
#from libraries.utility import Utility as util
mutil = util()
img_path = os.path.join(mutil.get_this_dir(),"artifacts","images","irwin_analytics_small.txt")
img_text_data = mutil.get_data_from_file(img_path)

img_tag = "<img align=\"left\" src=\"data:image/png;base64,{}\" />".format(img_text_data)
a_tag = "<a href=\"https://www.irwinanalytics.com\" target=\"https://www.irwinanalytics.com\">{}</a>".format(img_tag)
#print(img_text_data)

from IPython.core.display import display, HTML, Markdown, Latex
display(HTML(
    '<style>'
        '#notebook { padding-top:0px !important; } ' 
        '.container { width:100% !important; } '
        '.end_space { min-height:0px !important; } '
        '.end_space { min-height:0px !important; } '
        '.prompt {width: 0px; min-width: 0px; visibility: collapse } '
        '.parent{'
        '    display: grid;'
        '    grid-template-columns: 1fr 1fr;'
        '    column-gap: 5px;'
        '}    '
    '</style>'
))


my_html = "<hr/>".format(img_tag,a_tag)
display(HTML(my_html))
my_html = "<div class='parent'><div>{}</div></div>".format(a_tag)
display(HTML(my_html))
```


<style>#notebook { padding-top:0px !important; } .container { width:100% !important; } .end_space { min-height:0px !important; } .end_space { min-height:0px !important; } .prompt {width: 0px; min-width: 0px; visibility: collapse } .parent{    display: grid;    grid-template-columns: 1fr 1fr;    column-gap: 5px;}    </style>



<hr/>



<div class='parent'><div><a href="https://www.irwinanalytics.com" target="https://www.irwinanalytics.com"><img align="left" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMgAAAAuCAYAAABtRVYBAAAJ5npUWHRSYXcgcHJvZmlsZSB0eXBl
IGV4aWYAAHjarZdrlhwrDoT/5ypmCSAhQMvhIc6ZHczy56O63Hb7+j48Z6rsquysBIQiFAqe+M+/
z/MvXlJzeYq1Xr3WxKt4cRlc9PTx8tdnTuX1+Xqtb7/lr/cfifcPwi3lWz/+bOP9/OC+fR/wOc/8
ev/p71+kvyfKnxO/XnpXvtf7xyC5Lx/3c3lP5O+Iqvf2Y6jzPdF6P/gK5f2/fN/e63X/fr7caGRp
GwupSGjWxKfoOwK9/1UH34XPrM5zPMO1qT+vH+p7MhLyZXvfvlP6MUFfkvzt6vk5+zp+nXwZ7yf0
p1zWd464+OUP2X66r5/ry5eFPyOSrz/8AMwfknzO7ufEx+5GqWS0vhn1Snb+Ng0PTlKur2GVd+O/
cd1eb+fd00gLyHdaafJe2bOQ8fPkknce+eR4fa+8CLFISONbZIm+7nVt4rL04lTuOx9p6rq1g+WS
eAC0qHzGkl/r+mu9lTsr78yjkpksM+RP389f/fg77+ecdVOUbzL1A2LikstrwrjI3U+eApB83rjZ
K8Hf3m/40w/EgqogaK80dzY40vyYYlr+zi194aw8Z3x/lFB+2n5PQIpY2wgmKwikmtVyzamJtJzJ
YwegQeSiRSYIZDPZBClFtcrTpMtdmzEtv54Vkyr3NtoEEKZVG9i4DsAqxeBPKx0ODVMrZlatWX/M
bVStpVqttdUrcqNpK81aba315m107aVbr7313r0PF1c00Lx68+7uY8gzWGgw1+D5wZ0pU2eZNuts
s0+fY0GfVZatutrqy9fYsnUjE7vutvv2PSI/gVJECYsaLXp4jAPXjp5y7NTTTj9+xidqb1T/8P4N
1PIbNXkhdZ9rn6hx92nt2xT5yoldzEBMSgbxdhGA0HIxSz2XIhe5i1nyq3ImBGkXm2fnixgQlshi
J39i9x25f4TbY/0f4SZ/h9xzoft/IPcA3R9x+wVq+0rweiH2UYU3p0mpvqNpSH+GzN11Hf4Ya4Yz
f0ZSpjeiYi/pED8ZAz+nsZiNPjuVRHbmHnvZXh6251OyrHV2q6sy7AS4TN1znTqFVIRk519qVjyX
4Wf1nVsSJYjRjpcT1nzO8sTae5LTuW/v6vf323Z/+/v5rQGnQRCCSafr1dKhGgbE/bRnkJ1xWuUB
SOwZfE9MJ2ylWLAKE4dygt4xS+8VSBz2QvfddDOhHXAGPAgZs53ks0TXwrSnDg2xuSxPRbdVz94W
84yAe/X0Re5Xk0Fr6l22FYgm47mfVUez1QmJPnSMoFax6f0sZkkn4JBOpjCXapYitx6q94Goemz4
XFfYpPXdIne41Y94qlH3LqvOOX01pACojsL/vWHTcW/UQBQmh3F+F6ejjude7LZeN3aqA9pntoWe
soSjfYqCHgRhxOegn8bMmb0/IgMhUFul3iac690d4dS2YLbXQ34hEoJSu1fBlxG7hVN2TIq2t+uG
hmP9JCqTel9TYZuU3sakvfowahZynzIR+jbMPJAFlKCXkT0K1IeAZ9J7e2AiXKlRckGfcZDz2BC/
XUwnmS8zeiFcncONC6YnO22DNugIQkJV16UPpSx78RD87jbL2joNhlDMlT1BtUp6QQDXGurUC7oZ
G7Akj9kdFmVg6Q/DR+2R3XcG3D1JmoNhG/lSFiUpqc8J2hgNJm2jAu5AjElaLhPWKeUIIeeZ7Lzn
rcHMp1CnMqoHLwkTKT7IFfrX0D4ifG1KWEaumiKGWRoK+BRtji6iBayR5rTuxZZSyXRH36R/bpmI
FGISg+xX9K4C2kpw3C0xMEPKp4/ex6REpm9ktLWbJbkMWbKh0slF4AYZIGE1yDly5UmBoK8WEPXg
fLfS17aiomlXDBFAI2+Ww4D76jckWCU3VWikdQmbS952GGNqBD3WrhKTiCfsKJAY3CuLg4F3ZPeK
KjIumypu3BN2jO5fLZnYuV+JzPOX6vNLcQmlMlPA1D1ySK271FqeRTIxp9YzfrA5QZ2BoZn5VVF9
nALtKfyZgT7tELVIhdqj19aG8uxD3aGQrZSDsKMTt5IkXOgxUosszOMC+Bz7dIoIiUCKQbLGig7g
AizlQADixNVSrptGW7cdy9dXYGar7NFdghlv7WOU9Ta8szJ5Pbjl0rfR3/aVBcTozLkeyehGLRt0
KgXHKZCOQfi5R9wK3sLhZa2F4JaDBjrNTueetlYDuWV2bS8mAkBOzQwasTq6MXYs4oY+By8di3zj
8LVUn/Q2Zhw0P+Cm2LIt6uZPhA0a62oOH4gbEYhE9Tl5oZsZClPhx+yLsr/uPHATcA4dqiSbZR0n
0w7jUfBFFaAjOuqefZQz0mA4ROYqvJKDmPSASocmtQfh5ondnpPHxQCKosnsvPqm8VyjItweQLl7
zbvdFI2DMq5jvg8QUSNHbCzgpXA4i1C/fcX1Fi28hDf6EDW88Bt0Jaqv097aGC+PtE6LuReiZygr
YiE1BrCPZzcqgZLEQgEkbBFwpU6p+rGwPgkRIn7KaGkPmqKVuNyyaBiKnEnacCTzwWAAZKsxtWD2
unGS4QBDnyN7LNIyRyDvxW55+rE5IxckSXdVa2liNi12TY8pLGFoDSQbgYjt19TTKSgikkLgNJFg
c7CVqHlWkh14S1dVzD8U3BwD2Rq+C6bX6JzZOnTSRf9D43e163mIyK99IeExUBsskiMdZw6M1Yu3
6I3nhx/2hJAn8stFoeAYw04HOIjnXAVh2rc58lkwTqVRz4hYW8s1cKxN4UL2J9rAIFtlrVEgItlk
pCZoIEaHxzEM2JgR4IBsCsAYAoCyLe9Fy1g7nt54IjN0lr1rNW9lU4Pkv5xDB6NqW0ceEMmbfpQW
bYNK9MWGcYGdg54cRhcRNBSn3p21GAUyOGp4vyWCfUyHTBNXdK1Mfx3ItL969SXR9eMENfNDbZco
O90Nf/RnxM85OgNb66sglUGHphoaBRYDfZ/sGyywUfTL28eVfoBCNs9YbjoF9UqVcQxGsklyG7Q1
WgFmgoKg/BBGXYPcpIsPvq2toWQKo0IXScgF9Yftvq3o0FmR5dE2ZmHjca1Paukwcc1LOek2tEYq
wjso7lsKU9GnWA8+ChsTfeGJsDT4qIJboaEmUiWQiUw3ufV90mIvKa6cU96UL56deoUIueBG/Ooa
MGRImnWhIQpbcewoZ0JsXidIKvESGNpWThr4t04LDFm0Bs6zjOQEacRNywbOveholBBRwOxx7tlk
4uPpiA2NsKKOMGCVAIymNRV7Z8qZBa8SD/ydCUWhz8O+dFJwkLCNcT1j9B0bn4YlW9LvAR17Jsgf
foOi3oCHbnS4gvOf6XKlTUzKq145FQrtNTirdPpL/eAvBojqOPUeX+6hxT8uevr8fn6+8b9+/9OJ
6Nycyf4LfqA611ouMjsAAAGFaUNDUElDQyBwcm9maWxlAAB4nH2RPUjDQBzFXz+kIhWRdhBxyFB1
sSAq0lGqWAQLpa3QqoPJpV/QpCFJcXEUXAsOfixWHVycdXVwFQTBDxBXFydFFynxf0mhRYwHx/14
d+9x9w7wNqtMMfyTgKKaejoRF3L5VSHwCj9CGMQ4YiIztGRmMQvX8XUPD1/vojzL/dyfo18uGAzw
CMRzTNNN4g3i2U1T47xPHGZlUSY+J57Q6YLEj1yXHH7jXLLZyzPDejY9TxwmFkpdLHUxK+sK8Qxx
RFZUyvfmHJY5b3FWqnXWvid/YbCgrmS4TnMECSwhiRQESKijgipMRGlVSTGQpv24i3/Y9qfIJZGr
AkaOBdSgQLT94H/wu1ujOD3lJAXjQM+LZX2MAoFdoNWwrO9jy2qdAL5n4Ert+GtNIPZJeqOjRY6A
gW3g4rqjSXvA5Q4w9KSJumhLPpreYhF4P6NvygOhW6BvzemtvY/TByBLXS3fAAeHwFiJstdd3t3b
3du/Z9r9/QDi1HLUfCEYUAAAD7lpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBi
ZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+Cjx4OnhtcG1ldGEgeG1s
bnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDQuNC4wLUV4aXYyIj4KIDxy
ZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4
LW5zIyI+CiAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgIHhtbG5zOmlwdGNFeHQ9
Imh0dHA6Ly9pcHRjLm9yZy9zdGQvSXB0YzR4bXBFeHQvMjAwOC0wMi0yOS8iCiAgICB4bWxuczp4
bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIKICAgIHhtbG5zOnN0RXZ0PSJo
dHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VFdmVudCMiCiAgICB4bWxu
czpwbHVzPSJodHRwOi8vbnMudXNlcGx1cy5vcmcvbGRmL3htcC8xLjAvIgogICAgeG1sbnM6R0lN
UD0iaHR0cDovL3d3dy5naW1wLm9yZy94bXAvIgogICAgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9y
Zy9kYy9lbGVtZW50cy8xLjEvIgogICAgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hh
cC8xLjAvIgogICB4bXBNTTpEb2N1bWVudElEPSJnaW1wOmRvY2lkOmdpbXA6ZWE0MDUzNTAtYWY2
Ny00OTNmLWI0OWMtMGRkYmJkMGRkODYwIgogICB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOmM4
YzVjN2QzLWM1N2ItNDNlNC1hNGRmLTEwNGMyMmM1NjVkYSIKICAgeG1wTU06T3JpZ2luYWxEb2N1
bWVudElEPSJ4bXAuZGlkOmM5ODU0ZWUyLWU4MGItNDhlYi1hNDBmLTM3MDhmZGU1M2JmMCIKICAg
R0lNUDpBUEk9IjIuMCIKICAgR0lNUDpQbGF0Zm9ybT0iV2luZG93cyIKICAgR0lNUDpUaW1lU3Rh
bXA9IjE2ODE5Mjc1MDczNDI3ODgiCiAgIEdJTVA6VmVyc2lvbj0iMi4xMC4yMCIKICAgZGM6Rm9y
bWF0PSJpbWFnZS9wbmciCiAgIHhtcDpDcmVhdG9yVG9vbD0iR0lNUCAyLjEwIj4KICAgPGlwdGNF
eHQ6TG9jYXRpb25DcmVhdGVkPgogICAgPHJkZjpCYWcvPgogICA8L2lwdGNFeHQ6TG9jYXRpb25D
cmVhdGVkPgogICA8aXB0Y0V4dDpMb2NhdGlvblNob3duPgogICAgPHJkZjpCYWcvPgogICA8L2lw
dGNFeHQ6TG9jYXRpb25TaG93bj4KICAgPGlwdGNFeHQ6QXJ0d29ya09yT2JqZWN0PgogICAgPHJk
ZjpCYWcvPgogICA8L2lwdGNFeHQ6QXJ0d29ya09yT2JqZWN0PgogICA8aXB0Y0V4dDpSZWdpc3Ry
eUlkPgogICAgPHJkZjpCYWcvPgogICA8L2lwdGNFeHQ6UmVnaXN0cnlJZD4KICAgPHhtcE1NOkhp
c3Rvcnk+CiAgICA8cmRmOlNlcT4KICAgICA8cmRmOmxpCiAgICAgIHN0RXZ0OmFjdGlvbj0ic2F2
ZWQiCiAgICAgIHN0RXZ0OmNoYW5nZWQ9Ii8iCiAgICAgIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5p
aWQ6YzVjMTZmMGYtZDZjMy00NWMyLTk4YmMtYjJkMTkyN2ZlZDRiIgogICAgICBzdEV2dDpzb2Z0
d2FyZUFnZW50PSJHaW1wIDIuMTAgKFdpbmRvd3MpIgogICAgICBzdEV2dDp3aGVuPSIyMDIzLTA0
LTE5VDExOjA1OjA3Ii8+CiAgICA8L3JkZjpTZXE+CiAgIDwveG1wTU06SGlzdG9yeT4KICAgPHBs
dXM6SW1hZ2VTdXBwbGllcj4KICAgIDxyZGY6U2VxLz4KICAgPC9wbHVzOkltYWdlU3VwcGxpZXI+
CiAgIDxwbHVzOkltYWdlQ3JlYXRvcj4KICAgIDxyZGY6U2VxLz4KICAgPC9wbHVzOkltYWdlQ3Jl
YXRvcj4KICAgPHBsdXM6Q29weXJpZ2h0T3duZXI+CiAgICA8cmRmOlNlcS8+CiAgIDwvcGx1czpD
b3B5cmlnaHRPd25lcj4KICAgPHBsdXM6TGljZW5zb3I+CiAgICA8cmRmOlNlcS8+CiAgIDwvcGx1
czpMaWNlbnNvcj4KICAgPGRjOmNyZWF0b3I+CiAgICA8cmRmOlNlcT4KICAgICA8cmRmOmxpPjkx
OTAzOTM2MTQ2NDQ3MzwvcmRmOmxpPgogICAgPC9yZGY6U2VxPgogICA8L2RjOmNyZWF0b3I+CiAg
PC9yZGY6RGVzY3JpcHRpb24+CiA8L3JkZjpSREY+CjwveDp4bXBtZXRhPgogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgCjw/eHBhY2tldCBlbmQ9Inci
Pz4nLMT3AAAABmJLR0QAAAAAAAD5Q7t/AAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH5wQT
EgUHjAjJ0wAACqRJREFUeNrtnXlQFFcexz89F8MM4rUgiBpF3HhwadQgh2jiLSKJMSYmVmJMNpem
kvLarSRqNodZk3UTjXGjOSyjRne9Aor3rUg0KAqC6IoKIoICcgrDzPT+MeyAxg3Tg1CYvE/VVNFD
/7p/3e99+/1+7/26RvLqN1lGIBDcFZW4BQKBEIhAIAQiEAiBCARCIAKBEIhAIAQiEAiBCARCIAKB
EIhAIPgtCEQCenb2EC0oaFQ0zhhFBHVm0oQhSIDFauXzZbGkZ91w2H5k6IM8HhVh39609TDxR84q
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
1tupIbRwcQAAAABJRU5ErkJggg==
" /></a></div></div>


# MIDS W205 Fall 2021 Project 3
### Instructor: Shiraz Chakraverty
### Student: Ben Mok
### Team Members: Aastha Khanna, Ben Mok, Don Irwin, Theresa Kuruvilla
### Section Tuesday 6 P.M.
#### Date: 12/02/2021

## Introduction:

In this document we will explain the key components of project 3.

We will inspect the environment we set up.

We will inspect the code we run create the pipeline from and push data through it.

The Video link below gives a walk-through of our entire project end-to-end.


```python
from IPython.display import HTML
HTML('<a href="https://www.youtube.com/watch?v=TpS3rIrctBo" target="https://www.youtube.com/watch?v=TpS3rIrctBo"> Click on this text or the image below to view an explanation video</a>')

```




<a href="https://www.youtube.com/watch?v=TpS3rIrctBo" target="https://www.youtube.com/watch?v=TpS3rIrctBo"> Click on this text or the image below to view an explanation video</a>




```python
HTML('<a href="https://www.youtube.com/watch?v=TpS3rIrctBo" target="https://youtu.be/Mgce9pA9ASc"> <img src="https://tuneman7.github.io/video.png" border=0, width="20%">    </a>')
```




<a href="https://www.youtube.com/watch?v=TpS3rIrctBo" target="https://youtu.be/Mgce9pA9ASc"> <img src="https://tuneman7.github.io/video.png" border=0, width="20%">    </a>



***
## Team Contribution To the Codebase:

The instructor has been granted read access, and may view check-in history on our collaboration github repo, to view team member checkins for verification of the assessment below:

https://github.com/mids-w205-chakraverty/project_3_team_2_tue_6_30

Aastha:  

Contributed to hive table extraction and supported general development.  Was also responsible for finding fix which saved many hours.  Assisted Theresa in applying this fix to her environment.

Ben:  

Created Parameterized random sythetic event pitcher, YML file as well as, demonstrated understanding of the entire pipeline end-to-end. 

Theresa: 

Contributed to Flask API endpoint.

Don: 

Solution architect, contributed to steaming, query, table schema, and automation.

Lise:  

Dropped the class.



***

## Building blocks of the pipeline

1. The YML file:

    This is infrastructure as code file.  It specifies all the containers and their connections to one another.

2.  Configuraton Files:

    Some configuration files "log4j.properties" and the like are used for configuring spark.

3. Fask API file:

    These python files which we submit through Spark-Submit, this makes the pipeline reproductable and extensible.

4. Hive Table Definition Files

5. Spark Submit Program

6. Synthetic Parameterized Event Generation

7. Hive Query Files.

8. Jupyter Notebook File For Hive Reporting.

9. Bash Script File.
    

We will walk through each of these building blocks one by one.
    

### The YML File -- Our Infrastructure as Code Environment:

#### The YML file can be found at the following location:
./code_files/docker-compose.yml

Let us inspect the YML file, please read comments below:

```yml
---
#  Don Irwin 12/02/2021
#  
#  Some notable changes include exposing drives on certain containers.
#  Additionally for the conflientinc images we are no longer using the "latest" images.
#  This is because the latest images have changes in them which do not user "--zookeeper" flags
#  for topic creations from the command prompt.
#  
#  This changed on us during the work.
#  Hence we had to revert to versions :5.3.1 in order for our code to continue to work.
#
#
version: '2'
services:
  redis:
    image: redis:latest
    expose:
      - "6379"
      
  zookeeper:
    image: confluentinc/cp-zookeeper:5.3.1
    environment:
      ZOOKEEPER_CLIENT_PORT: 32181
      ZOOKEEPER_TICK_TIME: 2000
    expose:
      - "2181"
      - "2888"
      - "32181"
      - "3888"
    extra_hosts:
      - "moby:127.0.0.1"

  kafka:
    image: confluentinc/cp-kafka:5.3.1
    depends_on:
      - zookeeper
    environment:
      KAFKA_BROKER_ID: 1
      KAFKA_ZOOKEEPER_CONNECT: zookeeper:32181
      KAFKA_ADVERTISED_LISTENERS: PLAINTEXT://kafka:29092
      KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR: 1
    expose:
      - "9092"
      - "29092"
    extra_hosts:
      - "moby:127.0.0.1"

  cloudera:
    image: midsw205/hadoop:0.0.2
    hostname: cloudera
    expose:
      - "8020" # nn
      - "8888" # hue
      - "9083" # hive thrift
      - "10000" # hive jdbc
      - "50070" # nn http
    ports:
      - "8888:8888"
      - "9093"
    extra_hosts:
      - "moby:127.0.0.1"
    volumes:
      - ~/w205:/w205      

  spark:
    image: midsw205/spark-python:0.0.6
    stdin_open: true
    tty: true
    volumes:
      - ~/w205:/w205
    expose:
      - "8888"
    #ports:
    #  - "8888:8888"
    depends_on:
      - cloudera
    environment:
      HADOOP_NAMENODE: cloudera
      HIVE_THRIFTSERVER: cloudera:9083
    extra_hosts:
      - "moby:127.0.0.1"
    command: bash

  presto:
    image: midsw205/presto:0.0.1
    hostname: presto
    volumes:
      - ~/w205:/w205
    expose:
      - "8080"
    ports:
      - "8082:8080" # Adding binding to local port 8082 for connection from notebooks; 8080 was in use
    environment:
      HIVE_THRIFTSERVER: cloudera:9083
    extra_hosts:
      - "moby:127.0.0.1"

  mids:
    image: midsw205/base:0.1.9
    stdin_open: true
    tty: true
    volumes:
      - ~/w205:/w205
    expose:
      - "5000"
    ports:
      - "5000:5000"
    extra_hosts:
      - "moby:127.0.0.1"
    command: jupyter notebook --no-browser --port 8888 --ip 0.0.0.0 --allow-root


```

### Configuration Files

####  The Spark log4j.properties file is available at the following location.

./code_files/log4j.properties

We are interested in this file because adjusting a setting shuts down Pyspark's verbose warning messaging.

The line we are interested in is below.

```bash

log4j.rootCategory=FATAL, console

```

We copy our modified log4j.properties file to our spark instance using the following command.

```bash

docker-compose exec spark bash -c "cp /w205/project-3-tuneman7/code_files/log4j.properties ./conf/log4j.properties"

```



### Flask API File:

####  The Python Query file is available at the following location:

./code_files/game_api.py

This file contains the Python code run within the flask http server.

```bash

docker-compose exec mids env FLASK_APP=/w205/project-3-tuneman7/code_files/game_api.py flask run >> log_file1.txt &

```

Let us inspect this file's contents:

```python

#!/usr/bin/env python
from __future__ import print_function
import json
import uuid
from kafka import KafkaProducer
from flask import Flask, request, session
from flask import jsonify
import sys
from multiprocessing import Value


counter = Value('i', 0)
app = Flask(__name__)

event_id = 0

def get_event_id():
    out = str(uuid.uuid4())
    return out

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)

app = Flask(__name__)
producer = KafkaProducer(bootstrap_servers='kafka:29092')

def log_event_parameters():
    args = request.args
    print(args, file=sys.stderr)
    print(request.args.to_dict(),file=sys.stderr)
    print(request.args.viewkeys(),file=sys.stderr)
    key_views = request.args.viewkeys()
    output_list = []
    output_dict = {}
    event_id = get_event_id()
    return_string = ""
    key_count = 0
    for key in request.args.viewkeys():
        my_dict = {}
        my_dict["event_id"] = event_id
        my_dict["parameter_name"] = key
        my_dict["parameter_value"] = request.args.get(key)       
        print(key,file=sys.stderr)
        print(request.args.get(key),file=sys.stderr)
        output_dict[key]=request.args.get(key)       
        output_list.append(my_dict)
        key_count = key_count +1
        producer.send("event_parameters", json.dumps(my_dict).encode())
    if key_count==0:
        my_dict = {}
        my_dict["event_id"] = event_id
        my_dict["parameter_name"] = "user"
        my_dict["parameter_value"] = "NONE"
        producer.send("event_parameters", json.dumps(my_dict).encode())
    return event_id

def log_to_kafka(topic, event):
    event_id = log_event_parameters()
    event.update(request.headers)
    event_id_dict={'event_id':event_id}
    event.update(event_id_dict)
    producer.send(topic, json.dumps(event).encode())


@app.route("/")
def default_response():
    default_event = {'event_type': 'default'}
    log_to_kafka('events', default_event)
    return "This is the default response!\n"


@app.route("/purchase_a_sword")
def purchase_a_sword():
    purchase_sword_event = {'event_type': 'purchase_sword'}
    log_to_kafka('events', purchase_sword_event)
    return "Sword Purchased!\n"

@app.route("/join_a_guild")
def join_guild():
    join_guild_event = {'event_type': 'join_guild'}
    log_to_kafka('events', join_guild_event)
    return "Joined Guild!\n"

@app.route("/leave_guild")
def leave_guild():
    leave_guild_event = {'event_type': 'leave_guild'}
    log_to_kafka('events', leave_guild_event)
    return "Left Guild!\n"

@app.route("/get_credit")
def get_credit():
    get_credit_event = {'event_type': 'get_credit'}
    log_to_kafka('events', get_credit_event)
    return "Received Credit!\n"

@app.route("/shutdown")
def shutdown():
    func = request.environ.get('werkzeug.server.shutdown')
    if func is None:
        raise RuntimeError('Not running with the Werkzeug Server')
    func()
    return ""


```


***
### Hive Table Hive Table Definition Files

####  The HQL file can be found at the following location:

./code_files/hive_table_creation.hql

This file is executed within our pipeline in the following way:

```bash
docker-compose exec cloudera hive -f /w205/project-3-tuneman7/code_files/hive_table_creation.hql 
```
Its contents are below:

```sql

create external table if not exists default.all_events (
    raw_event string,
    timestamp string,
    Accept string,
    Host string,
    User_Agent string,
    event_id string,
    event_type string
  )
  stored as parquet 
  location '/tmp/all_events'
  tblproperties ("parquet.compress"="SNAPPY");
  

create external table if not exists default.event_parameters (
    raw_event string,
    timestamp string,
    Accept string,
    Host string,
    User_Agent string,
    event_id string,
    parameter_name string,
    parameter_value string
    
  )
  stored as parquet 
  location '/tmp/event_parameters'
  tblproperties ("parquet.compress"="SNAPPY");

```


***
### Spark Submit Program

####  The Spark Submit program can be found at the following location:

./code_files/separate_event_stream_2.py

This file is executed within our pipeline in the following way:

```bash

docker-compose exec spark spark-submit /w205/project-3-tuneman7/code_files/separate_events_stream_2.py &

```
Its contents are below:

```python

#!/usr/bin/env python
"""Extract events from kafka and write them to hdfs
"""
import json,time
from pyspark.sql import SparkSession, Row
#from pyspark.sql.functions import udf
from pyspark.sql.functions import udf, from_json
from pyspark.sql.types import *

def general_event_schema():
    """
    root
    |-- Accept: string (nullable = true)
    |-- Host: string (nullable = true)
    |-- User-Agent: string (nullable = true)
    |-- event_type: string (nullable = true)
    """
    return StructType([
        StructField("Accept", StringType(), True),
        StructField("Host", StringType(), True),
        StructField("User-Agent", StringType(), True),
        StructField("event_id", StringType(), True),
        StructField("event_type", StringType(), True),
    ])

def event_parameter_event_schema():
    """
    root
    |-- Accept: string (nullable = true)
    |-- Host: string (nullable = true)
    |-- User-Agent: string (nullable = true)
    |-- event_type: string (nullable = true)
    """
    return StructType([
        StructField("Accept", StringType(), True),
        StructField("Host", StringType(), True),
        StructField("User-Agent", StringType(), True),
        StructField("event_id", StringType(), True),
        StructField("parameter_name", StringType(), True),
        StructField("parameter_value", StringType(), True),
    ])




@udf('string')
def munge_event(event_as_json):
    event = json.loads(event_as_json)
    event['Host'] = "moe"
    event['Cache-Control'] = "no-cache"
    return json.dumps(event)

def main():
    """main
    """
    spark = SparkSession \
        .builder \
        .appName("ExtractEventsJob") \
        .getOrCreate()

    raw_events = spark \
        .readStream \
        .format("kafka") \
        .option("kafka.bootstrap.servers", "kafka:29092") \
        .option("subscribe", "events") \
        .load()
    
    raw_event_parameters = spark \
        .readStream \
        .format("kafka") \
        .option("kafka.bootstrap.servers", "kafka:29092") \
        .option("subscribe", "event_parameters") \
        .load()

    event_parameters = raw_event_parameters \
        .select(raw_event_parameters.value.cast('string').alias('raw_event'),
                raw_event_parameters.timestamp.cast('string'),
                from_json(raw_event_parameters.value.cast('string'),
                          event_parameter_event_schema()).alias('json')) \
        .select('raw_event', 'timestamp', 'json.*')

    all_events = raw_events \
        .select(raw_events.value.cast('string').alias('raw_event'),
                raw_events.timestamp.cast('string'),
                from_json(raw_events.value.cast('string'),
                          general_event_schema()).alias('json')) \
        .select('raw_event', 'timestamp', 'json.*')    
    
    sink1 = event_parameters \
        .writeStream \
        .format("parquet") \
        .option("checkpointLocation", "/tmp/checkpoints_for_event_parameters") \
        .option("path", "/tmp/event_parameters") \
        .trigger(processingTime="10 seconds") \
        .start()
        
    sink2 = all_events \
        .writeStream \
        .format("parquet") \
        .option("checkpointLocation", "/tmp/checkpoints_for_all_events") \
        .option("path", "/tmp/all_events") \
        .trigger(processingTime="10 seconds") \
        .start()        
    

    sink1.awaitTermination()
    sink2.awaitTermination()

    
if __name__ == "__main__":
    main()


```

***
### Sythetic Parameterized Event (data) Generation

####  This program can be found at the following location:

./code_files/primative_event_pitcher_ab_2.py

This file is executed within our pipeline in the following way:

```bash

python primative_event_pitcher_ab_2.py >> log_event_pitcher.txt

```

Its contents are listed below:

```python

import sys, getopt,os,smtplib,time
from os.path import basename
from email.mime.application import MIMEApplication
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.utils import COMMASPACE, formatdate
import subprocess
import random

def main():
    
    with open('guild_names.csv', encoding='ISO-8859-1') as g:
        guild_names = [row.split(',')[0].strip('\n') for row in g]
        g.close()
    with open('sword_types.csv',encoding='ISO-8859-1') as s:
        sword_types = [row.split(',')[0].strip('\n') for row in s]
        s.close()
    rand_int  = random.randint(5,110)
    thisdir   = os.getcwd()
    users     = ['ben', 'aastha', 'lise', 'theresa', 'don']
    events    = ['purchase_a_sword', 'join_a_guild', 'leave_guild', 'get_credit']
    
    
    flask_shutdown_command = "docker-compose exec mids curl http://localhost:5000/shutdown"

    print("pitching events")
    # Just create 10000 events.
    i = 1
    
    while i < 140:
        i+=1
        e_randint = random.randint(0,len(events)-1)
        u_randint = random.randint(0,len(users)-1)
        g_randint = random.randint(0,len(guild_names)-1)
        s_randint = random.randint(0,len(sword_types)-1)
        b_randint = random.randint(0,40)
        base      = 'docker-compose exec -T mids ab -n {} -H "Host: user2.att.com" http://localhost:5000/'.format(b_randint)

        
        if events[e_randint] =='join_a_guild':
            line = base + 'join_a_guild"?user={}&guild_name={}"'
            line = line.format(users[u_randint],guild_names[g_randint])
        elif events[e_randint] =='leave_guild':
            line = base + 'leave_guild"?user={}&guild_name={}"'
            line = line.format(users[u_randint],guild_names[g_randint])
        elif events[e_randint] == 'purchase_a_sword':
            line = base + 'purchase_a_sword"?user={}&sword_type={}"'
            line = line.format(users[u_randint],sword_types[s_randint])
        else:
            line = base + 'get_credit"?user={}&guild_name={}"'
            line = line.format(users[u_randint],guild_names[g_randint])
        print(line)
        subprocess.call(line, shell=True)
        print("Press and HOLD CTRL+C to terminate, else 10000 events will be created")
        
        

main()


```


***
### Hive Query File

This is a HQL file which contains "canned" queries to answer questions about the state of the game / pipeline.

####  This program can be found at the following location:

./code_files/query_hive_tables.hql

This file is executed within our pipeline in the following way:

```bash

docker-compose exec presto presto --server presto:8080 --catalog hive --schema default -f /w205/project-3-tuneman7/code_files/query_hive_tables.hql 

```

Its contents are listed below:

```sql

select '-----------LOOK AT TOTAL EVENT COUNTS--------------------';
select
    event_type,
    count(event_type) as event_count
from 
    all_events
group by event_type;
select '-----------LOOK USER GUILD JOIN COUNT--------------------';
select 
    un.parameter_value as user_name,
    et.event_type as event,
    count(un.parameter_value) as guild_join_count
from 
    all_events et
join 
    event_parameters un
on 
    et.event_id = un.event_id
and 
    et.event_type = 'join_guild'
and 
    un.parameter_name = 'user'    
group by 
    un.parameter_value
    ,et.event_type
order by 
    count(un.parameter_value) desc limit 10;
select '-----------LOOK USER GUILD LEAVE COUNT--------------------';
select 
    un.parameter_value as user_name,
    et.event_type as event,
    count(un.parameter_value) as guild_leave_count
from 
    all_events et
join 
    event_parameters un
on 
    et.event_id = un.event_id
and 
    et.event_type = 'leave_guild'
and 
    un.parameter_name = 'user'    
group by 
    un.parameter_value
    ,et.event_type
order by 
    count(un.parameter_value) desc limit 10;
select '-----------LOOK USER GET CREDIT COUNT--------------------';
select 
    un.parameter_value as user_name,
    et.event_type as event,
    count(un.parameter_value) as get_credit_count
from 
    all_events et
join 
    event_parameters un
on 
    et.event_id = un.event_id
and 
    et.event_type = 'get_credit'
and 
    un.parameter_name = 'user'    
group by 
    un.parameter_value
    ,et.event_type
order by 
    count(un.parameter_value) desc limit 10;
select '-----------LOOK AT 10 MOST POPULAR SWORDS--------------------';
select 
    un.parameter_value as sword_name,
    et.event_type as event,
    count(un.parameter_value) as popular_sword_count
from 
    all_events et
join 
    event_parameters un
on 
    et.event_id = un.event_id
and 
    un.parameter_name = 'sword_type'
group by 
    un.parameter_value
    ,et.event_type
order by 
    count(un.parameter_value) desc limit 10;
select '-----------LOOK AT 10 MOST POPULAR GUILDS--------------------';
select 
    un.parameter_value as guild_name,
    et.event_type as event,
    count(un.parameter_value) as popular_guild_count
from 
    all_events et
join 
    event_parameters un
on 
    et.event_id = un.event_id
and 
    un.parameter_name = 'guild_name'
and 
    et.event_type = 'join_guild'
group by 
    un.parameter_value
    ,et.event_type
order by 
    count(un.parameter_value) desc limit 10;
select '-------------------------------';    

```


***
### Jyputer Notebook for Hive Reporting

This is a jupyter notebook which contains basic queries and answers to questions.

####  This file can be found at the following location:

./code_files/hive_reports.ipynb



***
### Bash Script for Running the Pipeline

This is the "glue" program that runs the pipeline end-to-end

####  This file can be found at the following location:

./code_files/dd.sh

This program is executed in the following way:

```bash
. dd.sh
```

The contents of this file are below:

```bash

#!/bin/bash

#bring up images
docker-compose up -d
echo "sleeping 25"
sleep 25
echo "looking at HDFS"

#look at hdf
docker-compose exec cloudera hadoop fs -ls /tmp/

echo "creating topic"

docker-compose exec kafka kafka-topics --create --topic events --partitions 1 --replication-factor 1 --if-not-exists --zookeeper zookeeper:32181
sleep 3
docker-compose exec kafka kafka-topics --create --topic event_parameters --partitions 1 --replication-factor 1 --if-not-exists --zookeeper zookeeper:32181
echo "sleeping"
sleep 4

#spin up API endpoint flask container.
docker-compose exec -T mids env FLASK_APP=/w205/game_api.py flask run 2>/dev/null &
echo "sleeping"
sleep 4
echo "copying config files over"
echo "docker-compose exec -T spark bash -c \"cp /w205/log4j.properties ./conf/log4j.properties\""
docker-compose exec -T spark bash -c "cp /w205/log4j.properties ./conf/log4j.properties"


echo "doing the spark submit"
echo "docker-compose exec -T spark spark-submit /w205/separate_events_stream_2.py"

docker-compose exec -T spark spark-submit /w205/separate_events_stream_2.py &

#create hive tables
echo "docker-compose exec -T cloudera hive -f /w205/hive_table_creation.hql"
docker-compose exec -T cloudera hive -f /w205/hive_table_creation.hql 


docker-compose exec cloudera hadoop fs -ls /tmp/


#echo "Run primative event pitcher/generator primative_event_pitcher.py"
echo "python primative_event_pitcher_ab.py>/dev/null"
echo "press and HOLD CTL+C to terminate:"
x=1
while [ $x -le 500 ]
do
  python primative_event_pitcher_ab_2.py >/dev/null
  docker-compose exec -T mids curl http://localhost:5000/shutdown
  docker-compose exec -T mids env FLASK_APP=/w205/game_api.py flask run 2>/dev/null &
  docker-compose exec presto presto --server presto:8080 --catalog hive --schema default -f /w205/query_hive_tables.hql 
  sleep 2
  echo "press and HOLD CTL+C to terminate:"
done

#python primative_event_pitcher.py  > log_event_pitcher.txt


#docker-compose down





```



### Running the pipeline end-to-end (single cycle)

####  A single-cycle pipeline (one that does only one batch of apache-bench calls) is created below.

```bash

. run_demo_of_pipeline.sh

```

It is not possible to run this pipeline within this notebook.  However, once it is run, its output can be gotten.

Below are some ad-hoq query results



```python
from pyhive import presto
import pandas as pd

presto_conn = presto.connect(
    host='presto',
    port=8080 # Exposed Presto port (see docker compose file)
)

pd.read_sql_query("SHOW TABLES", presto_conn)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Table</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>all_events</td>
    </tr>
    <tr>
      <th>1</th>
      <td>event_parameters</td>
    </tr>
  </tbody>
</table>
</div>




```python
all_events = pd.read_sql_query("SELECT * from all_events", presto_conn)
all_events.tail()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>raw_event</th>
      <th>timestamp</th>
      <th>accept</th>
      <th>host</th>
      <th>user_agent</th>
      <th>event_id</th>
      <th>event_type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>2757</th>
      <td>{"event_id": "8c1479ac-407b-4687-bb13-47e1609a...</td>
      <td>2023-08-29 01:26:09.889</td>
      <td>*/*</td>
      <td>user2.att.com</td>
      <td>ApacheBench/2.3</td>
      <td>8c1479ac-407b-4687-bb13-47e1609aa591</td>
      <td>leave_guild</td>
    </tr>
    <tr>
      <th>2758</th>
      <td>{"event_id": "374b78da-6aef-4028-b700-d83db0b2...</td>
      <td>2023-08-29 01:26:09.891</td>
      <td>*/*</td>
      <td>user2.att.com</td>
      <td>ApacheBench/2.3</td>
      <td>374b78da-6aef-4028-b700-d83db0b24dad</td>
      <td>leave_guild</td>
    </tr>
    <tr>
      <th>2759</th>
      <td>{"event_id": "0ab80d41-1e3d-4525-b78e-3c79683c...</td>
      <td>2023-08-29 01:26:09.892</td>
      <td>*/*</td>
      <td>user2.att.com</td>
      <td>ApacheBench/2.3</td>
      <td>0ab80d41-1e3d-4525-b78e-3c79683cdf97</td>
      <td>leave_guild</td>
    </tr>
    <tr>
      <th>2760</th>
      <td>{"event_id": "77a533fa-d0ec-4eb1-a79d-a32ebf83...</td>
      <td>2023-08-29 01:26:09.894</td>
      <td>*/*</td>
      <td>user2.att.com</td>
      <td>ApacheBench/2.3</td>
      <td>77a533fa-d0ec-4eb1-a79d-a32ebf838d53</td>
      <td>leave_guild</td>
    </tr>
    <tr>
      <th>2761</th>
      <td>{"event_id": "81500205-6f81-452c-8110-3bf0de00...</td>
      <td>2023-08-29 01:26:09.895</td>
      <td>*/*</td>
      <td>user2.att.com</td>
      <td>ApacheBench/2.3</td>
      <td>81500205-6f81-452c-8110-3bf0de00afaf</td>
      <td>leave_guild</td>
    </tr>
  </tbody>
</table>
</div>




```python
# https://stackoverflow.com/questions/55988436/how-to-convert-a-presto-query-output-to-a-python-data-frame
event_parameters = pd.read_sql_query("SELECT * from event_parameters", presto_conn)
event_parameters.tail()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>raw_event</th>
      <th>timestamp</th>
      <th>accept</th>
      <th>host</th>
      <th>user_agent</th>
      <th>event_id</th>
      <th>parameter_name</th>
      <th>parameter_value</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>5519</th>
      <td>{"event_id": "41ff0824-2480-443e-9ccb-b89b67e2...</td>
      <td>2023-08-29 01:25:39.692</td>
      <td>None</td>
      <td>None</td>
      <td>None</td>
      <td>41ff0824-2480-443e-9ccb-b89b67e2ee93</td>
      <td>guild_name</td>
      <td>Paladins of Claws</td>
    </tr>
    <tr>
      <th>5520</th>
      <td>{"event_id": "92ca3cac-2e1e-4360-bd27-b20d8592...</td>
      <td>2023-08-29 01:25:39.694</td>
      <td>None</td>
      <td>None</td>
      <td>None</td>
      <td>92ca3cac-2e1e-4360-bd27-b20d85923f6e</td>
      <td>user</td>
      <td>ben</td>
    </tr>
    <tr>
      <th>5521</th>
      <td>{"event_id": "92ca3cac-2e1e-4360-bd27-b20d8592...</td>
      <td>2023-08-29 01:25:39.694</td>
      <td>None</td>
      <td>None</td>
      <td>None</td>
      <td>92ca3cac-2e1e-4360-bd27-b20d85923f6e</td>
      <td>guild_name</td>
      <td>Paladins of Claws</td>
    </tr>
    <tr>
      <th>5522</th>
      <td>{"event_id": "2087c7c2-9437-4335-b9c1-b0081a55...</td>
      <td>2023-08-29 01:25:39.695</td>
      <td>None</td>
      <td>None</td>
      <td>None</td>
      <td>2087c7c2-9437-4335-b9c1-b0081a55b0ee</td>
      <td>user</td>
      <td>ben</td>
    </tr>
    <tr>
      <th>5523</th>
      <td>{"event_id": "2087c7c2-9437-4335-b9c1-b0081a55...</td>
      <td>2023-08-29 01:25:39.695</td>
      <td>None</td>
      <td>None</td>
      <td>None</td>
      <td>2087c7c2-9437-4335-b9c1-b0081a55b0ee</td>
      <td>guild_name</td>
      <td>Paladins of Claws</td>
    </tr>
  </tbody>
</table>
</div>




```python
event_parameters = pd.read_sql_query("select     un.parameter_value as user_name,     et.event_type as event,     count(un.parameter_value) as guild_join_count  from      all_events et  join      event_parameters un on     et.event_id = un.event_id and    et.event_type = 'join_guild' and     un.parameter_name = 'user'     group by     un.parameter_value    ,et.event_type order by     count(un.parameter_value) desc limit 10", presto_conn)
event_parameters.head()


```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>user_name</th>
      <th>event</th>
      <th>guild_join_count</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>aastha</td>
      <td>join_guild</td>
      <td>133</td>
    </tr>
    <tr>
      <th>1</th>
      <td>don</td>
      <td>join_guild</td>
      <td>116</td>
    </tr>
    <tr>
      <th>2</th>
      <td>theresa</td>
      <td>join_guild</td>
      <td>110</td>
    </tr>
    <tr>
      <th>3</th>
      <td>ben</td>
      <td>join_guild</td>
      <td>109</td>
    </tr>
    <tr>
      <th>4</th>
      <td>lise</td>
      <td>join_guild</td>
      <td>11</td>
    </tr>
  </tbody>
</table>
</div>




```python
event_parameters = pd.read_sql_query("select     un.parameter_value as sword_name,    et.event_type as event,    count(un.parameter_value) as popular_sword_count from     all_events et join     event_parameters un on     et.event_id = un.event_id and     un.parameter_name = 'sword_type' group by     un.parameter_value     ,et.event_type order by     count(un.parameter_value) desc limit 10", presto_conn)
event_parameters.head()


```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>sword_name</th>
      <th>event</th>
      <th>popular_sword_count</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Vengeance</td>
      <td>purchase_sword</td>
      <td>73</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Leg-Biter</td>
      <td>purchase_sword</td>
      <td>68</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Eternal Rest</td>
      <td>purchase_sword</td>
      <td>62</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Crimson Immolation</td>
      <td>purchase_sword</td>
      <td>40</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Grinning Night</td>
      <td>purchase_sword</td>
      <td>39</td>
    </tr>
  </tbody>
</table>
</div>




```python
presto_conn.close()
```
