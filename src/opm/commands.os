
��������� ����������������������(���� ������) �������
	���������������Build(������);
	���������������Prepare(������);
��������������

/////////////////////////////////////////////////////////////////////////
// �������� ������

��������� ���������������Prepare(���� ������)
	������� = ������.���������������("prepare");
	������.���������������������������(�������, "���������");
	������.���������������������������(�������, "dir");
	������.���������������(�������);
��������������

��������� ���������������Build(���� ������)
	������� = ������.���������������("build");
	������.���������������������������(�������, "�����������������");
	������.���������������������������(�������, "�������������");
	������.���������������(�������);
��������������

/////////////////////////////////////////////////////////////////////////
// ���������� ������

��������� ���������������(���� �����������������, ���� �������������)
	
	������� = �����������������(��������������(��������������(), "builder.os"));
	�������.������������(�����������������, �������������);
	
��������������

��������� �������������������������(���� ���������, ���� ���������������)
	
	���� ��������������� = ������������ �����
		��������������� = ��������������();
	���������;
	
	�������������� = ����� ����(��������������(���������������, ���������));
	���� �� ��������������.����������() �����
		��������������(��������������.���������);
	�����
		���������� = ����������(��������������.���������, ���������������������());
		���� ����������.����������() �����
			����������������� "������� ������� " + ��������������.��������� + " ��� ����������";
		���������;
	���������;
	
	���������������������������������(��������������.���������);
	������������������������������������(��������������.���������, ���������);

	��������("������");
	
��������������

��������� ���������������������������������(���� �������)

	�������� = ��������������(�������, "__install__.os");
	������������ = ����� ������������(��������);
	������������.��������������("///////////////////////////////////////////////////////////////////");
	������������.��������������("// �������� ��������� � �������� ������ � ���������� ������        ");
	������������.��������������("///////////////////////////////////////////////////////////////////
	|
	|");
	
	������������.��������������("// ���������� �������� ���������� ��� ��������� ������ �� ���������� ������.");
	������������.��������������("// ");
	������������.��������������("// ���������:");
	������������.��������������("//   ���������������������� - ������. ���� � ������� �������� �������� ������������� ������� �����.");
	������������.��������������("// ");
	������������.��������������("��������� ������������(���� ����������������������) �������");
	������������.��������������("	// TODO: ���������� ����. ������ ���������, ���� ���������");
	������������.��������������("��������������");
	������������.��������������(�������.��);
	
	������������.��������������("// ���������� �������� ���������� ��� �������� ������ � ���������� ������.");
	������������.��������������("// ");
	������������.��������������("// ���������:");
	������������.��������������("//   ���������������������� - ������. ������� � ������� ���������� �����.");
	������������.��������������("// ");
	������������.��������������("��������� �����������(���� ����������������������) �������");
	������������.��������������("	// TODO: ���������� ����. ������ ��������, ���� ���������");
	������������.��������������("��������������");
	
	������������.�������();

��������������

��������� ������������������������������������(���� �������, ���� ���������)
	�������� = ��������������(�������, "lib.config");
	
	������ = ����� ������XML;
	������.�����������(��������);
	������.������������������XML();
	������.����������������������("package-def");
	������.������������������������������������("", "http://oscript.io/schemas/package-def/1.0");
	������.���������������("name", ���������);
	������.���������������("version", "0.1");
	
	������.����������������������("class");
	������.���������������("name", "���������������");
	������.���������������("file", "��������������������.os");
	������.���������������������();
	
	������.����������������������("module");
	������.���������������("name", "���������������");
	������.���������������("file", "��������������������.os");
	������.���������������������();
	
	������.���������������������();
	������.�������();
	
��������������

��������� ���������������(���� ���������)
	
	���� ����(����(���������), 4) = ".ospx" �����
	
	���������;
	
��������������