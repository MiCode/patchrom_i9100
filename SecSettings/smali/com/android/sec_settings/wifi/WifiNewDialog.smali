.class Lcom/android/sec_settings/wifi/WifiNewDialog;
.super Landroid/app/AlertDialog;
.source "WifiNewDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static ConnectedCorrectPassword:Ljava/lang/String;

.field public static ConnectedPassword:Ljava/lang/String;

.field private static final DBG:Z

.field public static Remembered:I

.field public static bEdit:I

.field public static changedssid:Ljava/lang/String;

.field public static previousssid:Ljava/lang/String;


# instance fields
.field final details:Z

.field private final mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

.field public mAccessPointSecurity:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoGenFirstTime:Z

.field private mConnectedAPEdit:I

.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field final mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field public mSsidView:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field final manageNetwork:Z

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 145
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->DBG:Z

    .line 147
    const-string v0, " "

    sput-object v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 149
    const-string v0, " "

    sput-object v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/sec_settings/wifi/AccessPoint;Z)V
    .locals 3
    .parameter "context"
    .parameter "style"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 111
    iput v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 162
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 163
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 164
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    .line 169
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mTempSsid:Ljava/lang/String;

    .line 170
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 183
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 801
    new-instance v1, Lcom/android/sec_settings/wifi/WifiNewDialog$2;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/WifiNewDialog$2;-><init>(Lcom/android/sec_settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 835
    new-instance v1, Lcom/android/sec_settings/wifi/WifiNewDialog$3;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/WifiNewDialog$3;-><init>(Lcom/android/sec_settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 208
    iput-boolean p5, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEdit:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->details:Z

    .line 210
    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->manageNetwork:Z

    .line 211
    iput-object p3, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 212
    iput-object p4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 213
    iput v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 215
    if-nez p4, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 216
    const-string v0, "WifiNewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNewDialog: style ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )   edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 215
    :cond_0
    iget v0, p4, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/sec_settings/wifi/AccessPoint;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "style"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 111
    iput v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 162
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 163
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 164
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 166
    iput-boolean v3, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    .line 169
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mTempSsid:Ljava/lang/String;

    .line 170
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    .line 171
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 183
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 801
    new-instance v1, Lcom/android/sec_settings/wifi/WifiNewDialog$2;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/WifiNewDialog$2;-><init>(Lcom/android/sec_settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 835
    new-instance v1, Lcom/android/sec_settings/wifi/WifiNewDialog$3;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/WifiNewDialog$3;-><init>(Lcom/android/sec_settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 223
    iput-boolean p5, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEdit:Z

    .line 224
    iput-boolean p6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->details:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->manageNetwork:Z

    .line 226
    iput-object p3, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 227
    iput-object p4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 228
    iput v3, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 229
    if-nez p4, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 230
    const-string v0, "WifiNewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNewDialog: style ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )   edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )  details ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 229
    :cond_0
    iget v0, p4, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/WifiNewDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/sec_settings/wifi/WifiNewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04011e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 488
    const v1, 0x7f0b0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 490
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 653
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 654
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 658
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v0

    .line 660
    if-eqz v0, :cond_1

    move v0, v1

    .line 688
    :goto_1
    return v0

    .line 654
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 669
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 671
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 672
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 676
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 677
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/sec_settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 681
    :goto_3
    if-nez v0, :cond_4

    .line 682
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 683
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v0, v2

    .line 688
    goto :goto_1

    .line 665
    :cond_3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 678
    :catch_0
    move-exception v0

    move v0, v1

    .line 679
    :goto_4
    const v3, 0x7f0900ec

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v1

    .line 685
    goto :goto_1

    .line 678
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1153
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1154
    const v0, 0x7f09027e

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1156
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1157
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 1158
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1166
    :goto_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1168
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1169
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1170
    return-void

    .line 1160
    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1161
    aput-object v2, v0, v4

    .line 1162
    array-length v2, v3

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 1174
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1177
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1180
    if-eqz p2, :cond_0

    .line 1182
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1183
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1184
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1185
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1190
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1183
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 6

    .prologue
    const v3, 0x7f0b0367

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1037
    const/4 v0, 0x0

    .line 1039
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0365

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1041
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_a

    .line 1042
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1045
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 1046
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0368

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    .line 1049
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1050
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0369

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    .line 1051
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1052
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1054
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1055
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    .line 1056
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1057
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b036c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    .line 1058
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1061
    :cond_0
    if-eqz v1, :cond_5

    .line 1062
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1063
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1064
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1066
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1072
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1073
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1079
    const-string v0, ""

    .line 1080
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1081
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1082
    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1083
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1088
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 1089
    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1090
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1104
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1105
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1106
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1107
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1108
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1109
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1110
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1114
    :cond_6
    return-void

    .line 1085
    :cond_7
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1092
    :cond_8
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1096
    :cond_9
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0b0361

    const v5, 0x7f0b0360

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1117
    const/4 v0, 0x0

    .line 1119
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b035d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1122
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1125
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1126
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0362

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    .line 1130
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1131
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0363

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    .line 1132
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1133
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0364

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1134
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1136
    :cond_0
    if-eqz v1, :cond_1

    .line 1137
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 1138
    if-eqz v0, :cond_1

    .line 1139
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    :cond_1
    :goto_1
    return-void

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 10

    .prologue
    const v9, 0x7f0b036e

    const v8, 0x7f0b0372

    const v7, 0x7f0b0371

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 901
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 903
    iget v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-nez v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 906
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 912
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b02e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    .line 913
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 914
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 916
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 917
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 918
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 919
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 928
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 929
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 921
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 932
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_6

    .line 935
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 937
    const-string v1, "PEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    const-string v1, "TLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    const-string v1, "TTLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    const-string v1, "PWD"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    const-string v1, "FAST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 943
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 944
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 945
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 947
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b036f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 948
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 949
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 950
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 951
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    .line 952
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b035c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    .line 954
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 958
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 959
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 961
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    .line 962
    if-eqz v1, :cond_5

    .line 963
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v3, "fast_provisioning="

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 966
    :cond_5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    .line 967
    if-eqz v1, :cond_8

    const-string v2, "auth="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 968
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v3, "auth="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 974
    :goto_2
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "keystore://CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    :goto_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_6

    .line 991
    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 993
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 994
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 995
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 999
    :cond_6
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b036d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0373

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1003
    const-string v0, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1004
    :cond_7
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1005
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0370

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0373

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0374

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0377

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0378

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1021
    :goto_4
    const-string v0, "FAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1022
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1028
    :goto_5
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0370

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1031
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0374

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 970
    :cond_8
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-direct {p0, v2, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 982
    :cond_9
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v1, "MSCHAPV2"

    invoke-direct {p0, v0, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1013
    :cond_a
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0370

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0373

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0374

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0377

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1019
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0378

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 1026
    :cond_b
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f0902bf

    const v3, 0x7f0902be

    const v0, 0x7f0902bc

    const/4 v1, 0x0

    .line 692
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    move v0, v1

    .line 768
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 695
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 699
    :try_start_0
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 704
    const/4 v0, -0x1

    .line 706
    :try_start_1
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 707
    if-ltz v0, :cond_2

    const/16 v5, 0x20

    if-le v0, v5, :cond_3

    :cond_2
    move v0, v2

    .line 708
    goto :goto_0

    .line 710
    :cond_3
    new-instance v5, Landroid/net/LinkAddress;

    invoke-direct {v5, v4, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v5}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 721
    :goto_1
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 725
    :try_start_2
    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 726
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 727
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x1

    aput-byte v4, v0, v2

    .line 728
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 742
    :goto_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    iget-boolean v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    if-eqz v2, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 747
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0902c1

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    :goto_3
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    .line 758
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 759
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 765
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    :cond_4
    move v0, v1

    .line 768
    goto/16 :goto_0

    .line 711
    :catch_0
    move-exception v5

    .line 713
    iget-boolean v5, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAutoGenFirstTime:Z

    if-eqz v5, :cond_5

    .line 714
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0902c7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 717
    goto/16 :goto_0

    .line 735
    :cond_6
    :try_start_4
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 739
    new-instance v2, Landroid/net/RouteInfo;

    invoke-direct {v2, v0}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    .line 736
    :catch_1
    move-exception v0

    .line 737
    const v0, 0x7f0902bd

    goto/16 :goto_0

    .line 750
    :cond_7
    :try_start_5
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    .line 754
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 751
    :catch_2
    move-exception v0

    move v0, v3

    .line 752
    goto/16 :goto_0

    .line 762
    :catch_3
    move-exception v0

    move v0, v3

    .line 763
    goto/16 :goto_0

    .line 700
    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 730
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 729
    :catch_6
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/sec_settings/wifi/WifiNewDialog$4;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/WifiNewDialog$4;-><init>(Lcom/android/sec_settings/wifi/WifiNewDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 872
    return-void
.end method

.method public enableSubmitIfAppropriate()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x2

    const/4 v9, -0x1

    .line 494
    sget-boolean v6, Lcom/android/sec_settings/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiNewDialog"

    const-string v7, "enableSubmitIfAppropriate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    const/4 v6, -0x3

    invoke-virtual {p0, v6}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 497
    .local v4, submit:Landroid/widget/Button;
    invoke-virtual {p0, v9}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 498
    .local v0, connect:Landroid/widget/Button;
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 499
    const-string v6, "WifiNewDialog"

    const-string v7, "submit button is not set"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1
    :goto_0
    return-void

    .line 504
    :cond_2
    const/4 v5, 0x0

    .line 505
    .local v5, trimedSsidLength:I
    const/4 v1, 0x1

    .line 506
    .local v1, enabled:Z
    const/4 v3, 0x0

    .line 508
    .local v3, passwordInvalid:Z
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v6, :cond_12

    .line 509
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 510
    .local v2, passLen:I
    iget v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v6, v8, :cond_f

    if-ge v2, v10, :cond_f

    .line 512
    :cond_4
    sget-boolean v6, Lcom/android/sec_settings/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiNewDialog"

    const-string v7, "password invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_5
    const/4 v3, 0x1

    .line 524
    .end local v2           #passLen:I
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v6, :cond_8

    .line 525
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 526
    const/4 v1, 0x0

    .line 528
    :cond_7
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 531
    :cond_8
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->ipAndProxyFieldsAreValid()Z

    move-result v6

    if-nez v6, :cond_9

    .line 532
    const/4 v1, 0x0

    .line 535
    :cond_9
    sget-boolean v6, Lcom/android/sec_settings/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_a

    const-string v6, "WifiNewDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "password invalid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_a
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-ne v6, v9, :cond_c

    :cond_b
    if-eqz v3, :cond_c

    .line 537
    const/4 v1, 0x0

    .line 540
    :cond_c
    iget-boolean v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-nez v6, :cond_d

    if-nez v5, :cond_d

    .line 541
    const/4 v1, 0x0

    .line 543
    :cond_d
    if-eqz v4, :cond_e

    .line 544
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 545
    :cond_e
    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 514
    .restart local v2       #passLen:I
    :cond_f
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v6, v9, :cond_6

    iget v6, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v6, v8, :cond_6

    if-eqz v2, :cond_10

    if-lez v2, :cond_6

    if-ge v2, v10, :cond_6

    .line 517
    :cond_10
    sget-boolean v6, Lcom/android/sec_settings/wifi/WifiNewDialog;->DBG:Z

    if-eqz v6, :cond_11

    const-string v6, "WifiNewDialog"

    const-string v7, "password invalid (saved ap)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_11
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 521
    .end local v2           #passLen:I
    :cond_12
    const-string v6, "WifiNewDialog"

    const-string v7, "mPasswordView is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0x22

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 551
    const-string v4, "WifiNewDialog"

    const-string v6, "getConfig()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v8, :cond_0

    iget-boolean v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v4, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 649
    :goto_0
    return-object v0

    .line 556
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 558
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-nez v4, :cond_2

    .line 559
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 562
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 573
    :goto_1
    iget v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    packed-switch v4, :pswitch_data_0

    .line 645
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 646
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 647
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 563
    :cond_2
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v8, :cond_3

    .line 564
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 567
    :cond_3
    iget-boolean v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v4, :cond_4

    .line 568
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 570
    :cond_4
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 575
    :pswitch_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 579
    :pswitch_1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 580
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 581
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 582
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 583
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/sec_settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 584
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 585
    .local v2, length:I
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, password:Ljava/lang/String;
    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_6

    :cond_5
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 589
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v5

    goto/16 :goto_2

    .line 591
    :cond_6
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto/16 :goto_2

    .line 597
    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 598
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/sec_settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 600
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 601
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 602
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 604
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 610
    .end local v3           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 611
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 612
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 613
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    const-string v6, "FAST"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 614
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fast_provisioning="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 615
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v6, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 618
    :cond_8
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ""

    :goto_3
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 620
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_a

    const-string v4, ""

    :goto_4
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 623
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_b

    const-string v4, ""

    :goto_5
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 627
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_c

    .line 628
    .local v1, isEmptyKeyId:Z
    :goto_6
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_d

    const-string v4, ""

    :goto_7
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 630
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_e

    const-string v4, "0"

    :goto_8
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 632
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_f

    const-string v4, ""

    :goto_9
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 634
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_10

    const-string v4, ""

    :goto_a
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 636
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_11

    const-string v4, ""

    :goto_b
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 638
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 639
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/sec_settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 640
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 618
    .end local v1           #isEmptyKeyId:Z
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auth="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 620
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://CACERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 623
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://USRCERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    :cond_c
    move v1, v5

    .line 627
    goto/16 :goto_6

    .line 628
    .restart local v1       #isEmptyKeyId:Z
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 630
    :cond_e
    const-string v4, "1"

    goto/16 :goto_8

    .line 632
    :cond_f
    const-string v4, "keystore"

    goto/16 :goto_9

    .line 634
    :cond_10
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 636
    :cond_11
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1210
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "on back pressed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1211
    const/4 v0, 0x0

    sput v0, Lcom/android/sec_settings/wifi/WifiSettings;->edit_network:I

    .line 1212
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    .line 1213
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b037e

    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0333

    if-ne v0, v1, :cond_3

    .line 775
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 777
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 778
    const-string v0, "WifiNewDialog"

    const-string v1, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 783
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 787
    if-ltz v1, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 783
    :cond_2
    const/16 v0, 0x80

    goto :goto_1

    .line 791
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b037d

    if-ne v0, v1, :cond_0

    .line 792
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 793
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 249
    const-string v13, "WifiNewDialog"

    const-string v14, "onCreate()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 252
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 253
    .local v8, resources:Landroid/content/res/Resources;
    const-string v13, "enterprise_policy"

    invoke-virtual {v3, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f04011c

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setView(Landroid/view/View;)V

    .line 256
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setInverseBackgroundForced(Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b0330

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b0366

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b035f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b0029

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 268
    .local v6, infoMsg:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-nez v13, :cond_6

    .line 269
    const-string v13, "WifiNewDialog"

    const-string v14, "onCreate: mAccessPoint == null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const v13, 0x7f09023c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setTitle(I)V

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b0189

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b032e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    .line 274
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 276
    const/4 v13, -0x1

    const v14, 0x7f090354

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 277
    const/4 v13, -0x3

    const v14, 0x7f090356

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x14

    invoke-virtual {v13, v14}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 394
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/sec_settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_17

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_17

    .line 395
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->details:Z

    if-eqz v13, :cond_16

    .line 396
    const/4 v13, -0x3

    const v14, 0x7f090257

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 405
    :goto_1
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/sec_settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 420
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 421
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/sec_settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 422
    sget v13, Lcom/android/sec_settings/wifi/WifiNewDialog;->Remembered:I

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/sec_settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_1

    .line 423
    const/4 v13, -0x1

    const v14, 0x7f090257

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 426
    :cond_1
    const/4 v13, 0x1

    sput v13, Lcom/android/sec_settings/wifi/WifiSettings;->edit_network:I

    .line 427
    sget v13, Lcom/android/sec_settings/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v13, :cond_1a

    .line 428
    const/4 v13, -0x2

    const v14, 0x7f09025a

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 429
    const/4 v13, 0x1

    sput v13, Lcom/android/sec_settings/wifi/WifiSettings;->cancel_network:I

    .line 434
    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 437
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/sec_settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_4

    .line 438
    sget v13, Lcom/android/sec_settings/wifi/WifiNewDialog;->Remembered:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .line 439
    const/4 v13, -0x1

    const v14, 0x7f090354

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 442
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setInverseBackgroundForced(Z)V

    .line 443
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    if-nez v13, :cond_1b

    .line 444
    const v13, 0x7f09035b

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    :cond_3
    :goto_4
    const/4 v13, -0x3

    const v14, 0x7f090257

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 452
    const/4 v13, -0x2

    const v14, 0x7f090258

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 454
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 456
    const/4 v13, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    if-eqz v13, :cond_5

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->enableSubmitIfAppropriate()V

    .line 461
    :cond_5
    new-instance v13, Lcom/android/sec_settings/wifi/WifiNewDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/sec_settings/wifi/WifiNewDialog$1;-><init>(Lcom/android/sec_settings/wifi/WifiNewDialog;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 468
    return-void

    .line 282
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    if-nez v13, :cond_e

    .line 283
    const v13, 0x7f09035c

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b032d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 289
    .local v4, group:Landroid/view/ViewGroup;
    const-string v13, "WifiNewDialog"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onCreate: details "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->details:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/sec_settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    .line 291
    .local v11, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v11, :cond_7

    .line 292
    const v13, 0x7f09026c

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/android/sec_settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/sec_settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 294
    :cond_7
    const v13, 0x7f0a0018

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 295
    .local v12, type:[Ljava/lang/String;
    const v13, 0x7f09026a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/sec_settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/sec_settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/sec_settings/wifi/AccessPoint;->getLevel()I

    move-result v7

    .line 298
    .local v7, level:I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_9

    .line 299
    const v13, 0x7f0a0025

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 300
    .local v10, signal:[Ljava/lang/String;
    array-length v13, v10

    if-le v7, v13, :cond_8

    .line 301
    const-string v13, "WifiNewDialog"

    const-string v14, "Force level of wifi signal"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    array-length v13, v10

    add-int/lit8 v7, v13, -0x1

    .line 304
    :cond_8
    const v13, 0x7f09026b

    aget-object v14, v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/sec_settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 307
    .end local v10           #signal:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/sec_settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 309
    .local v5, info:Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_a

    .line 310
    const v13, 0x7f09026d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Mbps"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/sec_settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 312
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 313
    .local v1, address:I
    if-eqz v1, :cond_a

    .line 314
    const v13, 0x7f09026e

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/sec_settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 318
    .end local v1           #address:I
    :cond_a
    const/4 v9, 0x0

    .line 319
    .local v9, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_b

    .line 320
    const-string v13, "WifiNewDialog"

    const-string v14, "network id is valid"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 322
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v14, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v13, v14, :cond_f

    .line 323
    const-string v13, "WifiNewDialog"

    const-string v14, "ip assignment static"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 325
    const/4 v9, 0x1

    .line 331
    :goto_6
    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v14, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v13, v14, :cond_10

    .line 332
    const-string v13, "WifiNewDialog"

    const-string v14, "proxy static"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 334
    const/4 v9, 0x1

    .line 340
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->details:Z

    if-eqz v13, :cond_11

    .line 341
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 346
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v13, :cond_d

    .line 347
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->showSecurityFields()V

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->showIpConfigFields()V

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->showProxyFields()V

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b037c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b037d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    if-eqz v9, :cond_d

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b037d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b037e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v13, :cond_12

    .line 359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b0189

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b032e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b0330

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b0330

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 365
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/sec_settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 366
    const-string v13, "WifiNewDialog"

    const-string v14, "vzwViewFlag sets to false - onCreate, mEdit is true"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v13, -0x1

    const v14, 0x7f090354

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 368
    const/4 v13, -0x3

    const v14, 0x7f090356

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 369
    const-string v13, "WifiNewDialog"

    const-string v14, "EDIT true connect and submit btn set "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    sput-object v13, Lcom/android/sec_settings/wifi/WifiNewDialog;->previousssid:Ljava/lang/String;

    .line 371
    const/4 v13, 0x1

    sput v13, Lcom/android/sec_settings/wifi/WifiNewDialog;->bEdit:I

    goto/16 :goto_0

    .line 285
    .end local v4           #group:Landroid/view/ViewGroup;
    .end local v5           #info:Landroid/net/wifi/WifiInfo;
    .end local v7           #level:I
    .end local v9           #showAdvancedFields:Z
    .end local v11           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v12           #type:[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v13, v13, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 327
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #group:Landroid/view/ViewGroup;
    .restart local v5       #info:Landroid/net/wifi/WifiInfo;
    .restart local v7       #level:I
    .restart local v9       #showAdvancedFields:Z
    .restart local v11       #state:Landroid/net/NetworkInfo$DetailedState;
    .restart local v12       #type:[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 336
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 343
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_11
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 373
    :cond_12
    if-nez v11, :cond_15

    const/4 v13, -0x1

    if-eq v7, v13, :cond_15

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    if-nez v13, :cond_14

    .line 375
    const v13, 0x7f09035b

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    :cond_13
    :goto_9
    const/4 v13, -0x1

    const v14, 0x7f090354

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 382
    const-string v13, "WifiNewDialog"

    const-string v14, "EDIT false state null set connect button "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/sec_settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->manageNetwork:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->details:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    .line 388
    const/4 v13, -0x1

    const v14, 0x7f090355

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 377
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v13, v13, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_13

    .line 378
    const v13, 0x7f090259

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 384
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b0365

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 398
    .end local v4           #group:Landroid/view/ViewGroup;
    .end local v5           #info:Landroid/net/wifi/WifiInfo;
    .end local v7           #level:I
    .end local v9           #showAdvancedFields:Z
    .end local v11           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v12           #type:[Ljava/lang/String;
    :cond_16
    const/4 v13, -0x3

    const v14, 0x7f090256

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 399
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/sec_settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 400
    const-string v13, "WifiNewDialog"

    const-string v14, "vzwViewFlag sets to true"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v13, -0x2

    const v14, 0x7f090257

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 402
    const/4 v13, 0x0

    sput v13, Lcom/android/sec_settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_1

    .line 407
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v13, :cond_19

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v13}, Lcom/android/sec_settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    .line 409
    .restart local v11       #state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v11, :cond_19

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v11, v13, :cond_18

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v11, v13, :cond_18

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v11, v13, :cond_19

    .line 412
    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v14, 0x7f0b032d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 413
    .restart local v4       #group:Landroid/view/ViewGroup;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 416
    .end local v4           #group:Landroid/view/ViewGroup;
    .end local v11           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_19
    const/4 v13, -0x2

    const v14, 0x7f090357

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 431
    :cond_1a
    const/4 v13, -0x2

    const v14, 0x7f090258

    invoke-virtual {v3, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 432
    const/4 v13, 0x1

    sput v13, Lcom/android/sec_settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_3

    .line 447
    :cond_1b
    const v13, 0x7f090259

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-virtual {v3, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 884
    iput p3, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 885
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->showSecurityFields()V

    .line 893
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->enableSubmitIfAppropriate()V

    .line 894
    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 887
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->showSecurityFields()V

    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 889
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->showProxyFields()V

    goto :goto_0

    .line 891
    :cond_2
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 897
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 869
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x1

    const/high16 v2, 0x4160

    .line 1193
    const-string v0, "WifiNewDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 1196
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1198
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1200
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1201
    invoke-virtual {p0, v5}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1203
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1204
    invoke-virtual {p0, v4}, Lcom/android/sec_settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1206
    :cond_2
    return-void
.end method
