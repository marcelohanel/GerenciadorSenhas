unit uPrincipal;

interface

uses
  System.StrUtils, DateUtils, FMX.Helpers.Android, System.IOUtils, System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, Data.DbxSqlite, Data.FMTBcd,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Data.DB,
  Data.SqlExpr, FMX.StdCtrls, FMX.Layouts, FMX.ListBox, System.Actions,
  FMX.ActnList, FMX.TabControl, FMX.Edit, FMX.DateTimeCtrls, FMX.Memo, FMX.Platform, FMX.VirtualKeyboard,
  FMX.Controls.Presentation;

function GetID (Tabela: string): integer;

type
  TfrmPrincipal = class(TForm)
    TabControl1: TTabControl;
    tabPrincipal: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnSair_tabPrincipal: TSpeedButton;
    btnSobre_tabPrincipal: TSpeedButton;
    ToolBar2: TToolBar;
    btnAdicionar_tabPrincipal: TSpeedButton;
    btnAlterar_tabPrincipal: TSpeedButton;
    btnApagar_tabPrincipal: TSpeedButton;
    tabSobre: TTabItem;
    ToolBar3: TToolBar;
    Label2: TLabel;
    ToolBar8: TToolBar;
    btnOK_tabSobre: TSpeedButton;
    Label3: TLabel;
    edtAplicativo_tabSobre: TEdit;
    Label14: TLabel;
    edtLicenca_tabSobre: TEdit;
    Label15: TLabel;
    edtVersao_tabSobre: TEdit;
    Label16: TLabel;
    edtCopyright_tabSobre: TEdit;
    Label17: TLabel;
    edtContato_tabSobre: TEdit;
    ActionList1: TActionList;
    cngPrincipal: TChangeTabAction;
    cngSobre: TChangeTabAction;
    bdDados: TSQLConnection;
    ListBoxGrupos: TListBox;
    tabAdicionarGrupo: TTabItem;
    cngAdicionarGrupo: TChangeTabAction;
    ToolBar4: TToolBar;
    Label5: TLabel;
    ToolBar5: TToolBar;
    btnConfirmar_tabAdicionarGrupo: TSpeedButton;
    btnCancelar_tabAdicionarGrupo: TSpeedButton;
    Label4: TLabel;
    edtNomeGrupo_tabAdicionarGrupo: TEdit;
    ClearEditButton1: TClearEditButton;
    tabAlterarGrupo: TTabItem;
    cngAlterarGrupo: TChangeTabAction;
    ToolBar6: TToolBar;
    Label6: TLabel;
    ToolBar7: TToolBar;
    btnConfirmar_tabAlterarGrupo: TSpeedButton;
    btnCancelar_tabAlterarGrupo: TSpeedButton;
    Label7: TLabel;
    edtNomeGrupo_tabAlterarGrupo: TEdit;
    ClearEditButton2: TClearEditButton;
    tabExcluirGrupo: TTabItem;
    cngExcluirGrupo: TChangeTabAction;
    ToolBar9: TToolBar;
    Label9: TLabel;
    Label10: TLabel;
    ToolBar10: TToolBar;
    btnConfirmar_tabExcluirGrupo: TSpeedButton;
    btnCancelar_tabExcluirGrupo: TSpeedButton;
    Label8: TLabel;
    edtNomeGrupo_tabExcluirGrupo: TEdit;
    btnSenhas_tabPrincipal: TSpeedButton;
    tabSenhas: TTabItem;
    cngSenhas: TChangeTabAction;
    ToolBar11: TToolBar;
    lblTitulo_tabSenhas: TLabel;
    ToolBar12: TToolBar;
    btnAdicionar_tabSenhas: TSpeedButton;
    btnAlterar_tabSenhas: TSpeedButton;
    btnExcluir_tabSenhas: TSpeedButton;
    ListBoxSenhas: TListBox;
    btnVoltar_tabSenhas: TSpeedButton;
    tabAdicionarSenha: TTabItem;
    cngAdicionarSenha: TChangeTabAction;
    ToolBar13: TToolBar;
    ToolBar14: TToolBar;
    btnConfirmar_tabAdicionarSenha: TSpeedButton;
    btnCancelar_tabAdicionarSenha: TSpeedButton;
    Label12: TLabel;
    tabExluirSenha: TTabItem;
    ToolBar15: TToolBar;
    Label21: TLabel;
    Label22: TLabel;
    edtTitulo_tabExcluirSenha: TEdit;
    ToolBar16: TToolBar;
    btnConfirmar_tabExcluirSenha: TSpeedButton;
    btnCancelar_tabExcluirSenha: TSpeedButton;
    cngExcluirSenha: TChangeTabAction;
    tabAlterarSenha: TTabItem;
    cngAlterarSenha: TChangeTabAction;
    ToolBar17: TToolBar;
    Label23: TLabel;
    ToolBar18: TToolBar;
    btnConfirmar_tabAlterarSenha: TSpeedButton;
    btnCancelar_tabAlterarSenha: TSpeedButton;
    btnConfig_tabPrincipal: TSpeedButton;
    tabConfig: TTabItem;
    cngConfig: TChangeTabAction;
    ToolBar19: TToolBar;
    Label29: TLabel;
    ToolBar20: TToolBar;
    btnOK_tabConfig: TSpeedButton;
    btnExportar_tabConfig: TSpeedButton;
    btnImportar_tabConfig: TSpeedButton;
    ListBoxAlteraSenha: TListBox;
    ListBoxItemAlteraSenha: TListBoxItem;
    Label24: TLabel;
    edtTitulo_tabAlterarSenha: TEdit;
    ClearEditButton6: TClearEditButton;
    Label25: TLabel;
    edtUsuario_tabAlterarSenha: TEdit;
    ClearEditButton7: TClearEditButton;
    Label26: TLabel;
    edtSenha_tabAlterarSenha: TEdit;
    ClearEditButton8: TClearEditButton;
    Label27: TLabel;
    cbxGrupo_tabAlterarSenha: TComboBox;
    Label28: TLabel;
    mmoObservacoes_tabAlterarSenha: TMemo;
    ListBoxAdicionarSenha: TListBox;
    ListBoxItemAdicionarSenha: TListBoxItem;
    Label11: TLabel;
    edtTitulo_tabAdicionarSenha: TEdit;
    ClearEditButton3: TClearEditButton;
    Label13: TLabel;
    edtUsuario_tabAdicionarSenha: TEdit;
    ClearEditButton4: TClearEditButton;
    Label18: TLabel;
    edtSenha_tabAdicionarSenha: TEdit;
    ClearEditButton5: TClearEditButton;
    Label19: TLabel;
    cbxGrupo_tabAdicionarSenha: TComboBox;
    Label20: TLabel;
    mmoObservacao_tabAdicionarSenha: TMemo;
    btnSenha: TSpeedButton;
    tabLogin: TTabItem;
    cngLogin: TChangeTabAction;
    tabDefinirSenha: TTabItem;
    cngDefinirSenha: TChangeTabAction;
    ToolBar21: TToolBar;
    lblDefinirSenha: TLabel;
    ToolBar22: TToolBar;
    btnConfirmar_tabDefinirSenha: TSpeedButton;
    btnCancelar_tabDefinirSenha: TSpeedButton;
    Label30: TLabel;
    edtSenha_tabDefinirSenha: TEdit;
    ClearEditButton9: TClearEditButton;
    Label31: TLabel;
    edtConfirmar_tabDefinirSenha: TEdit;
    ClearEditButton10: TClearEditButton;
    ToolBar23: TToolBar;
    btnConfirmar_tabLogin: TSpeedButton;
    btnCancelar_tabLogin: TSpeedButton;
    ToolBar24: TToolBar;
    Label32: TLabel;
    Label33: TLabel;
    edtSenha_tabLogin: TEdit;
    ClearEditButton11: TClearEditButton;
    MetropolisUIListBoxItem1: TMetropolisUIListBoxItem;
    procedure btnSair_tabPrincipalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSobre_tabPrincipalClick(Sender: TObject);
    procedure btnOK_tabSobreClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure bdDadosAfterConnect(Sender: TObject);
    procedure bdDadosBeforeConnect(Sender: TObject);
    procedure OnIdle(Sender: TObject; var ADone: Boolean);
    procedure btnConfirmar_tabAdicionarGrupoClick(Sender: TObject);
    procedure btnCancelar_tabAdicionarGrupoClick(Sender: TObject);
    procedure btnAdicionar_tabPrincipalClick(Sender: TObject);
    procedure MontaTela;
    procedure CriaItemGrupo(ID: Integer; Grupo: string);
    procedure FormShow(Sender: TObject);
    procedure btnAlterar_tabPrincipalClick(Sender: TObject);
    procedure btnCancelar_tabAlterarGrupoClick(Sender: TObject);
    procedure btnConfirmar_tabAlterarGrupoClick(Sender: TObject);
    procedure btnConfirmar_tabExcluirGrupoClick(Sender: TObject);
    procedure btnCancelar_tabExcluirGrupoClick(Sender: TObject);
    procedure btnApagar_tabPrincipalClick(Sender: TObject);
    procedure btnSenhas_tabPrincipalClick(Sender: TObject);
    procedure btnVoltar_tabSenhasClick(Sender: TObject);
    procedure MontaTelaSenhas;
    procedure CriaItemSenha(ID: Integer; Titulo: string; Usuario: string; Senha: string);
    procedure btnCancelar_tabAdicionarSenhaClick(Sender: TObject);
    procedure btnConfirmar_tabAdicionarSenhaClick(Sender: TObject);
    procedure btnAdicionar_tabSenhasClick(Sender: TObject);
    procedure btnConfirmar_tabExcluirSenhaClick(Sender: TObject);
    procedure btnCancelar_tabExcluirSenhaClick(Sender: TObject);
    procedure btnExcluir_tabSenhasClick(Sender: TObject);
    procedure btnAlterar_tabSenhasClick(Sender: TObject);
    procedure btnCancelar_tabAlterarSenhaClick(Sender: TObject);
    procedure btnConfirmar_tabAlterarSenhaClick(Sender: TObject);
    procedure btnOK_tabConfigClick(Sender: TObject);
    procedure btnConfig_tabPrincipalClick(Sender: TObject);
    procedure btnExportar_tabConfigClick(Sender: TObject);
    procedure btnImportar_tabConfigClick(Sender: TObject);
    procedure btnSenhaClick(Sender: TObject);
    procedure btnConfirmar_tabDefinirSenhaClick(Sender: TObject);
    procedure btnCancelar_tabDefinirSenhaClick(Sender: TObject);
    procedure btnConfirmar_tabLoginClick(Sender: TObject);
    procedure btnCancelar_tabLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.bdDadosAfterConnect(Sender: TObject);
begin
    try
       bdDados.ExecuteDirect('CREATE TABLE IF NOT EXISTS Grupos (ID INTEGER PRIMARY KEY ASC, Grupo TEXT)');
       bdDados.ExecuteDirect('CREATE TABLE IF NOT EXISTS Senhas (ID INTEGER PRIMARY KEY ASC, Titulo TEXT, Usuario TEXT, Senha TEXT, Grupo INTEGER, Observacao TEXT)');
    except
    end;

    try
       bdDados.ExecuteDirect('CREATE TABLE IF NOT EXISTS Parametros (ID INTEGER PRIMARY KEY ASC, Senha TEXT)');
       bdDados.ExecuteDirect('INSERT INTO Parametros (ID) VALUES (1)');
    except
    end;
end;

procedure TfrmPrincipal.bdDadosBeforeConnect(Sender: TObject);
begin
   bdDados.Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'database.db3');
end;

procedure TfrmPrincipal.btnAdicionar_tabPrincipalClick(Sender: TObject);
begin
    edtNomeGrupo_tabAdicionarGrupo.Text := '';
    cngAdicionarGrupo.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnAdicionar_tabSenhasClick(Sender: TObject);
begin
    edtTitulo_tabAdicionarSenha.Text     := '';
    edtUsuario_tabAdicionarSenha.Text    := '';
    edtSenha_tabAdicionarSenha.Text      := '';
    mmoObservacao_tabAdicionarSenha.Text := '';

    cbxGrupo_tabAdicionarSenha.Items.Clear;
    cbxGrupo_tabAdicionarSenha.Items     := ListBoxGrupos.Items;
    cbxGrupo_tabAdicionarSenha.ItemIndex := ListBoxGrupos.ItemIndex;

    cngAdicionarSenha.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnAlterar_tabPrincipalClick(Sender: TObject);
var
    Query : TSQLQuery;
begin
    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT ID, Grupo FROM Grupos');
    Query.SQL.Add('WHERE ID = ' + ListBoxGrupos.ItemByIndex(ListBoxGrupos.ItemIndex).TagString);
    Query.Open;
    Query.First;

    edtNomeGrupo_tabAlterarGrupo.Text := Query.FieldByName('Grupo').AsString;

    Query.Close;
    Query.Free;

    cngAlterarGrupo.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnAlterar_tabSenhasClick(Sender: TObject);
var
    Query : TSQLQuery;
begin
    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT ID, Titulo, Usuario, Senha, Grupo, Observacao FROM Senhas');
    Query.SQL.Add('WHERE ID = ' + ListBoxSenhas.ItemByIndex(ListBoxSenhas.ItemIndex).TagString);
    Query.Open;
    Query.First;

    cbxGrupo_tabAlterarSenha.Items.Clear;
    cbxGrupo_tabAlterarSenha.Items     := ListBoxGrupos.Items;
    cbxGrupo_tabAlterarSenha.ItemIndex := ListBoxGrupos.ItemIndex;

    edtTitulo_tabAlterarSenha.Text      := Query.FieldByName('Titulo').AsString;
    edtUsuario_tabAlterarSenha.Text     := Query.FieldByName('Usuario').AsString;
    edtSenha_tabAlterarSenha.Text       := Query.FieldByName('Senha').AsString;
    mmoObservacoes_tabAlterarSenha.Text := Query.FieldByName('Observacao').AsString;

    Query.Close;
    Query.Free;

    cngAlterarSenha.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnApagar_tabPrincipalClick(Sender: TObject);
var
    Query : TSQLQuery;
begin
    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT ID, Grupo FROM Grupos');
    Query.SQL.Add('WHERE ID = ' + ListBoxGrupos.ItemByIndex(ListBoxGrupos.ItemIndex).TagString);
    Query.Open;
    Query.First;

    edtNomeGrupo_tabExcluirGrupo.Text := Query.FieldByName('Grupo').AsString;

    Query.Close;
    Query.Free;

    cngExcluirGrupo.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnCancelar_tabAdicionarGrupoClick(Sender: TObject);
begin
    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnCancelar_tabAdicionarSenhaClick(Sender: TObject);
begin
    cngSenhas.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnCancelar_tabAlterarGrupoClick(Sender: TObject);
begin
    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnCancelar_tabAlterarSenhaClick(Sender: TObject);
begin
    cngSenhas.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnCancelar_tabDefinirSenhaClick(Sender: TObject);
begin
    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnCancelar_tabExcluirGrupoClick(Sender: TObject);
begin
    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnCancelar_tabExcluirSenhaClick(Sender: TObject);
begin
    cngSenhas.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnCancelar_tabLoginClick(Sender: TObject);
begin
    Close;
    //SharedActivity.Finish;
end;

procedure TfrmPrincipal.btnConfig_tabPrincipalClick(Sender: TObject);
begin
    cngConfig.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnConfirmar_tabAdicionarGrupoClick(Sender: TObject);
var
    Query : TSQLQuery;
begin
    if edtNomeGrupo_tabAdicionarGrupo.Text = '' then
    begin
        MessageDlg('Informe o nome do grupo !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0,
        procedure(const AResult: TModalResult)
        begin
            Exit;
        end);

        exit;
    end;

    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.SQL.Clear;
    Query.SQL.Add('INSERT INTO Grupos (ID, Grupo) VALUES (:ID, :Grupo)');
    Query.ParamByName('ID').AsInteger   := GetID ('Grupos');
    Query.ParamByName('Grupo').AsString := edtNomeGrupo_tabAdicionarGrupo.Text;
    Query.ExecSQL();

    Query.Close;
    Query.Free;

    MontaTela;
    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnConfirmar_tabAdicionarSenhaClick(Sender: TObject);
var
    Query : TSQLQuery;
    iIndex : integer;
begin
    if edtTitulo_tabAdicionarSenha.Text = '' then
    begin
        MessageDlg('Informe o título da senha !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0,
        procedure(const AResult: TModalResult)
        begin
            Exit;
        end);

        exit;
    end;

    if cbxGrupo_tabAdicionarSenha.ItemIndex < 0 then
    begin
        MessageDlg('Informe o grupo da senha !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0,
        procedure(const AResult: TModalResult)
        begin
            Exit;
        end);

        exit;
    end;

    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.SQL.Clear;
    Query.SQL.Add('INSERT INTO Senhas (ID, Titulo, Usuario, Senha, Grupo, Observacao) VALUES (:ID, :Titulo, :Usuario, :Senha, :Grupo, :Observacao)');
    Query.ParamByName('ID').AsInteger        := GetID ('Senhas');
    Query.ParamByName('Titulo').AsString     := edtTitulo_tabAdicionarSenha.Text;
    Query.ParamByName('Usuario').AsString    := edtUsuario_tabAdicionarSenha.Text;
    Query.ParamByName('Senha').AsString      := edtSenha_tabAdicionarSenha.Text;
    Query.ParamByName('Grupo').AsInteger     := StrToInt(ListBoxGrupos.ItemByIndex(cbxGrupo_tabAdicionarSenha.ItemIndex).TagString);
    Query.ParamByName('Observacao').AsString := mmoObservacao_tabAdicionarSenha.Text;
    Query.ExecSQL();

    Query.Close;
    Query.Free;

    iIndex := ListBoxGrupos.ItemIndex;

    MontaTela;

    ListBoxGrupos.ItemIndex := iIndex;

    MontaTelaSenhas;
    cngSenhas.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnConfirmar_tabAlterarGrupoClick(Sender: TObject);
var
    Query : TSQLQuery;
begin
    if edtNomeGrupo_tabAlterarGrupo.Text = '' then
    begin
        MessageDlg('Informe o nome do grupo !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0,
        procedure(const AResult: TModalResult)
        begin
            Exit;
        end);

        exit;
    end;

    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('UPDATE Grupos SET Grupo = :Grupo WHERE ID = :ID');

    Query.ParamByName('ID').AsInteger   := StrToInt(ListBoxGrupos.ItemByIndex(ListBoxGrupos.ItemIndex).TagString);
    Query.ParamByName('Grupo').AsString := edtNomeGrupo_tabAlterarGrupo.Text;
    Query.ExecSQL();

    Query.Close;
    Query.Free;

    MontaTela;

    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnConfirmar_tabAlterarSenhaClick(Sender: TObject);
var
    Query : TSQLQuery;
    iIndex : integer;
begin
    if edtTitulo_tabAlterarSenha.Text = '' then
    begin
        MessageDlg('Informe o título da senha !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0,
        procedure(const AResult: TModalResult)
        begin
            Exit;
        end);

        exit;
    end;

    if cbxGrupo_tabAlterarSenha.ItemIndex < 0 then
    begin
        MessageDlg('Informe o grupo da senha !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0,
        procedure(const AResult: TModalResult)
        begin
            Exit;
        end);

        exit;
    end;

    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.SQL.Clear;
    Query.SQL.Add('UPDATE Senhas SET Titulo = :Titulo, Usuario = :Usuario, Senha = :Senha, Grupo = :Grupo, Observacao = :Observacao WHERE ID = :ID');
    Query.ParamByName('ID').AsInteger        := StrToInt(ListBoxSenhas.ItemByIndex(ListBoxSenhas.ItemIndex).TagString);
    Query.ParamByName('Titulo').AsString     := edtTitulo_tabAlterarSenha.Text;
    Query.ParamByName('Usuario').AsString    := edtUsuario_tabAlterarSenha.Text;
    Query.ParamByName('Senha').AsString      := edtSenha_tabAlterarSenha.Text;
    Query.ParamByName('Grupo').AsInteger     := StrToInt(ListBoxGrupos.ItemByIndex(cbxGrupo_tabAlterarSenha.ItemIndex).TagString);
    Query.ParamByName('Observacao').AsString := mmoObservacoes_tabAlterarSenha.Text;
    Query.ExecSQL();

    Query.Close;
    Query.Free;

    iIndex := ListBoxGrupos.ItemIndex;

    MontaTela;

    ListBoxGrupos.ItemIndex := iIndex;

    MontaTelaSenhas;
    cngSenhas.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnConfirmar_tabDefinirSenhaClick(Sender: TObject);
var
    Query : TSQLQuery;
begin
    if edtSenha_tabDefinirSenha.Text <> edtConfirmar_tabDefinirSenha.Text then
    begin
        MessageDlg('A nova senha e a confirmação precisam ser iguais !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0,
        procedure(const AResult: TModalResult)
        begin
            Exit;
        end);

        exit;
    end;

    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('UPDATE Parametros SET Senha = :Senha WHERE ID = :ID');

    Query.ParamByName('ID').AsInteger   := 1;
    Query.ParamByName('Senha').AsString := edtSenha_tabDefinirSenha.Text;
    Query.ExecSQL();

    Query.Close;
    Query.Free;

    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnConfirmar_tabExcluirGrupoClick(Sender: TObject);
var
    Query : TSQLQuery;
begin
    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT ID FROM Senhas WHERE Grupo = :ID');
    Query.ParamByName('ID').AsInteger := StrToInt(ListBoxGrupos.ItemByIndex(ListBoxGrupos.ItemIndex).TagString);
    Query.Open;
    Query.First;
    if not Query.IsEmpty then
    begin
        MessageDlg('Existem senhas cadastradas neste grupo !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0,
        procedure(const AResult: TModalResult)
        begin
            Exit;
        end);

        Query.Close;
        Query.Free;

        exit;
    end;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('DELETE FROM Grupos WHERE ID = :ID');

    Query.ParamByName('ID').AsInteger := StrToInt(ListBoxGrupos.ItemByIndex(ListBoxGrupos.ItemIndex).TagString);
    Query.ExecSQL();

    Query.Close;
    Query.Free;

    MontaTela;

    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnConfirmar_tabExcluirSenhaClick(Sender: TObject);
var
    Query  : TSQLQuery;
    iIndex : integer;
begin
    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('DELETE FROM Senhas WHERE ID = :ID');
    Query.ParamByName('ID').AsInteger := StrToInt(ListBoxSenhas.ItemByIndex(ListBoxSenhas.ItemIndex).TagString);
    Query.ExecSQL();

    Query.Close;
    Query.Free;

    iIndex := ListBoxGrupos.ItemIndex;

    MontaTela;

    ListBoxGrupos.ItemIndex := iIndex;

    MontaTelaSenhas;
    cngSenhas.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnConfirmar_tabLoginClick(Sender: TObject);
var
    Query : TSQLQuery;
begin
    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT Senha FROM Parametros');
    Query.SQL.Add('WHERE ID = 1');
    Query.Open;
    Query.First;

    if Query.Fields[0].AsString <> edtSenha_tabLogin.Text then
    begin
        MessageDlg('Senha de acesso inválida !', TMsgDlgType.mtWarning, [TMsgDlgBtn.mbOK], 0,
        procedure(const AResult: TModalResult)
        begin
            Exit;
        end);

        Query.Close;
        Query.Free;

        exit;
    end;

    Query.Close;
    Query.Free;

    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnExcluir_tabSenhasClick(Sender: TObject);
var
    Query : TSQLQuery;
begin
    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT ID, Titulo FROM Senhas');
    Query.SQL.Add('WHERE ID = ' + ListBoxSenhas.ItemByIndex(ListBoxSenhas.ItemIndex).TagString);
    Query.Open;
    Query.First;

    edtTitulo_tabExcluirSenha.Text := Query.FieldByName('Titulo').AsString;

    Query.Close;
    Query.Free;

    cngExcluirSenha.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnExportar_tabConfigClick(Sender: TObject);
var
    F : TextFile;
    sFileName : string;
    Query : TSQLQuery;
    sAux : string;
begin
    sFileName := TPath.Combine(TPath.GetSharedDocumentsPath, 'dados.txt');

    AssignFile(F, sFileName);
    Rewrite(F);

    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT ID, Grupo FROM Grupos');
    Query.Open;
    Query.First;
    while not Query.Eof do
    begin
        sAux := 'Grupos#' + Query.FieldByName('ID').AsString + '#' +
                            Query.FieldByName('Grupo').AsString;
        WriteLn(F, sAux);
        Query.Next;
    end;
    Query.Close;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT ID, Titulo, Usuario, Senha, Grupo, Observacao FROM Senhas');
    Query.Open;
    Query.First;
    while not Query.Eof do
    begin
        sAux := 'Senhas#' + Query.FieldByName('ID').AsString      + '#' +
                            Query.FieldByName('Titulo').AsString  + '#' +
                            Query.FieldByName('Usuario').AsString + '#' +
                            Query.FieldByName('Senha').AsString   + '#' +
                            Query.FieldByName('Grupo').AsString   + '#' +
                            Query.FieldByName('Observacao').AsString;
        WriteLn(F, sAux);
        Query.Next;
    end;
    Query.Close;

    Query.Free;
    CloseFile(F);

    ShowMessage('Dados exportados para ' + sFileName);
end;

procedure TfrmPrincipal.btnImportar_tabConfigClick(Sender: TObject);
var
    F : TextFile;
    sFileName : string;
    sAux : string;
    Query : TSQLQuery;
begin
    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    sFileName := TPath.Combine(TPath.GetSharedDocumentsPath, 'dados.txt');

    AssignFile(F, sFileName);
    Reset(F);

    while not Eof(F) do
    begin
      ReadLn(F, sAux);

      if SplitString(sAux, '#')[0] = 'Grupos' then
      begin
          try
             Query.SQL.Clear;
             Query.SQL.Add('INSERT INTO Grupos (ID, Grupo) VALUES (:ID, :Grupo)');
             Query.ParamByName('ID').AsInteger   := StrToInt(SplitString(sAux, '#')[1]);
             Query.ParamByName('Grupo').AsString := SplitString(sAux, '#')[2];
             Query.ExecSQL();
          except
          end;
      end;

      if SplitString(sAux, '#')[0] = 'Senhas' then
      begin
          try
             Query.SQL.Clear;
             Query.SQL.Add('INSERT INTO Senhas (ID, Titulo, Usuario, Senha, Grupo, Observacao) VALUES (:ID, :Titulo, :Usuario, :Senha, :Grupo, :Observacao)');
             Query.ParamByName('ID').AsInteger        := StrToInt(SplitString(sAux, '#')[1]);
             Query.ParamByName('Titulo').AsString     := SplitString(sAux, '#')[2];
             Query.ParamByName('Usuario').AsString    := SplitString(sAux, '#')[3];
             Query.ParamByName('Senha').AsString      := SplitString(sAux, '#')[4];
             Query.ParamByName('Grupo').AsInteger     := StrToInt(SplitString(sAux, '#')[5]);
             Query.ParamByName('Observacao').AsString := SplitString(sAux, '#')[6];
             Query.ExecSQL();
          except
          end;
      end;
    end;

    CloseFile(F);

    Query.Close;
    Query.Free;

    MontaTela;

    ShowMessage('Dados Importados !');
end;

procedure TfrmPrincipal.MontaTela;
var
    Query : TSQLQuery;
begin
    ListBoxGrupos.Clear;

    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT ID, Grupo FROM Grupos ORDER BY Grupo');
    Query.Open;
    Query.First;

    while not Query.Eof do
    begin
        CriaItemGrupo(Query.FieldByName('ID').AsInteger, Query.FieldByName('Grupo').AsString);
        Query.Next;
    end;

    Query.Close;
    Query.Free;
end;

procedure TfrmPrincipal.MontaTelaSenhas;
var
    Query : TSQLQuery;
begin
    lblTitulo_tabSenhas.Text := 'Senhas ' + ListBoxGrupos.ItemByIndex(ListBoxGrupos.ItemIndex).Text;

    ListBoxSenhas.Clear;

    Query := TSQLQuery.Create(Self);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT ID, Titulo, Usuario, Senha FROM Senhas WHERE Grupo = :Grupo ORDER BY Titulo');
    Query.ParamByName('Grupo').AsInteger := StrToInt(ListBoxGrupos.ItemByIndex(ListBoxGrupos.ItemIndex).TagString);
    Query.Open;
    Query.First;

    while not Query.Eof do
    begin
        CriaItemSenha(Query.FieldByName('ID').AsInteger,
                      Query.FieldByName('Titulo').AsString,
                      Query.FieldByName('Usuario').AsString,
                      Query.FieldByName('Senha').AsString);
        Query.Next;
    end;

    Query.Close;
    Query.Free;
end;

procedure TfrmPrincipal.CriaItemSenha(ID: Integer; Titulo: string; Usuario: string; Senha: string);
var
    listBoxItem : TMetropolisUIListBoxItem;
begin
    listBoxItem             := TMetropolisUIListBoxItem.Create(ListBoxSenhas);
    listBoxItem.Parent      := ListBoxSenhas;
    listBoxItem.StyleLookup := 'listboxitemnodetail';
    listBoxItem.TagString   := IntToStr(ID);
    listBoxItem.Height      := 50;
    listBoxItem.Title       := Titulo;
    listBoxItem.SubTitle    := Usuario + ' / ' + Senha;
    listBoxItem.Text        := '';
    listBoxItem.Description := '';
end;

procedure TfrmPrincipal.CriaItemGrupo(ID: Integer; Grupo: string);
var
    listBoxItem : TListBoxItem;
    labelSenhas : TLabel;
    Query       : TSQLQuery;
begin
    listBoxItem             := TListBoxItem.Create(ListBoxGrupos);
    listBoxItem.Parent      := ListBoxGrupos;
    listBoxItem.StyleLookup := 'listboxitemnodetail';
    listBoxItem.TagString   := IntToStr(ID);
    listBoxItem.Text        := Grupo;

    labelSenhas               := TLabel.Create(listBoxItem);
    labelSenhas.Parent        := listBoxItem;
    labelSenhas.AutoSize      := True;
    labelSenhas.Align         := TAlignLayout.Right;
    labelSenhas.StyleLookup   := 'listboxheaderlabel';
    labelSenhas.Margins.Top   := 8;
    labelSenhas.Margins.Right := 10;
    labelSenhas.TextAlign     := TTextAlign.Trailing;
    labelSenhas.Text          := '0';

    Query := TSQLQuery.Create(frmPrincipal);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT COUNT(ID) FROM Senhas WHERE Grupo = :ID');
    Query.ParamByName('ID').AsInteger := ID;
    Query.Open;
    Query.First;
    labelSenhas.Text := Query.Fields[0].AsString;

    Query.Close;
    Query.Free;
end;

function GetID (Tabela: string): integer;
var
    iID : integer;
    Query : TSQLQuery;
begin
    Query := TSQLQuery.Create(frmPrincipal);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT MAX(ID) FROM ' + Tabela);
    Query.Open;
    Query.First;

    if Query.Fields[0].IsNull then
       iID := 1
    else
       iID := Query.Fields[0].AsInteger + 1;

    Query.Close;
    Query.Free;

    result := iID;
end;

procedure TfrmPrincipal.btnOK_tabConfigClick(Sender: TObject);
begin
    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnOK_tabSobreClick(Sender: TObject);
begin
    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnSair_tabPrincipalClick(Sender: TObject);
begin
    MessageDlg('Deseja realmente encerrar o aplicativo ?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: TModalResult)
    begin
        if AResult = mrYes then
           Close;

        Exit;
    end);
end;

procedure TfrmPrincipal.btnSenhaClick(Sender: TObject);
begin
    cngDefinirSenha.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnSenhas_tabPrincipalClick(Sender: TObject);
begin
    MontaTelaSenhas;
    cngSenhas.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnSobre_tabPrincipalClick(Sender: TObject);
begin
    cngSobre.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.btnVoltar_tabSenhasClick(Sender: TObject);
begin
    cngPrincipal.ExecuteTarget(Self);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
    Query : TSQLQuery;
begin
    System.SysUtils.FormatSettings.ShortDateFormat := 'dd/mm/yyyy';

    Application.OnIdle := OnIdle;
    bdDados.Open;

    ListBoxItemAlteraSenha.Height    := ListBoxAlteraSenha.Height;
    ListBoxItemAdicionarSenha.Height := ListBoxAdicionarSenha.Height;

    Query := TSQLQuery.Create(frmPrincipal);
    Query.SQLConnection := frmPrincipal.bdDados;

    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('SELECT Senha FROM Parametros');
    Query.Open;
    Query.First;

    if Query.Fields[0].AsString = '' then
       TabControl1.ActiveTab := tabPrincipal
    else
       TabControl1.ActiveTab := tabLogin;

    Query.Close;
    Query.Free;
end;

procedure TfrmPrincipal.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
    FService : IFMXVirtualKeyboardService;
begin
    if Key = vkHardwareBack then
    begin
        Key := 0;

        TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService, IInterface(FService));

        if (FService <> nil) and (TVirtualKeyboardState.Visible in FService.VirtualKeyBoardState) then
        begin
            FService.HideVirtualKeyboard();
            Exit;
        end;

        if TabControl1.ActiveTab = tabPrincipal then
            btnSair_tabPrincipal.OnClick(Sender);

        if TabControl1.ActiveTab = tabSobre then
           cngPrincipal.ExecuteTarget(Self);

        if TabControl1.ActiveTab = tabConfig then
           cngPrincipal.ExecuteTarget(Self);

        if TabControl1.ActiveTab = tabSenhas then
           cngPrincipal.ExecuteTarget(Self);
    end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
    MontaTela;
end;

procedure TfrmPrincipal.OnIdle(Sender: TObject; var ADone: Boolean);
begin
    btnAlterar_tabPrincipal.Enabled := ListBoxGrupos.Selected <> Nil;
    btnApagar_tabPrincipal.Enabled  := ListBoxGrupos.Selected <> Nil;
    btnSenhas_tabPrincipal.Enabled  := ListBoxGrupos.Selected <> Nil;

    btnAlterar_tabSenhas.Enabled := ListBoxSenhas.Selected <> Nil;
    btnExcluir_tabSenhas.Enabled := ListBoxSenhas.Selected <> Nil;
end;

end.
