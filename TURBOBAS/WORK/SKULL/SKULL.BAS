CLS
SCREEN 12
COLOR 2
?"
?"                              �����۲��������
?"                          ���۲��������
?"                        �۲�����
?"                      �۲��                         ���
?"                     ۲��                            �����
?"                   �������������             ����������۲��
?"                  �����      ��������� ����������     ��۲��
?"                 ���               �������               ۲��
?"                  ����         ���������۲�����        ��۱�
?"                 ���������۲����� �� ��� ޲�������������۲��
?"                 ����۲�����  �����۲� �۲��   ���������۲��
?"                  ۲���     �������۲� �۲����  �    ��۲��
?"                   �   �� ��������۲�  � ۲����    ��� ��
?"                         ��������� ��� ��� ���   �  �
?"                         �� �� ޱ   �  �   ߱  �� ��
?"                         ޱ     �           �     ޱ
?"                          �                        �
DIM SKULL(13000)
GET(130,10)-(495,285),SKULL
DEF SEG=VARSEG(SKULL(0))
BSAVE"SKULL.GRA",VARPTR(SKULL(0)),50000
END
