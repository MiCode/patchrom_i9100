.class public Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;
.super Landroid/app/AlertDialog;
.source "WifiApWhitelistDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mButtonOk:Landroid/widget/Button;

.field private mDeviceName:Ljava/lang/String;

.field private mEtDeviceName:Landroid/widget/EditText;

.field private mEtMac:Landroid/widget/LinearLayout;

.field private mEtMacArray:[Landroid/widget/EditText;

.field private mEtMacId:[I

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMac:Ljava/lang/String;

.field private mMacFilter:Landroid/text/InputFilter;

.field private mTextNoChange:Ljava/lang/Boolean;

.field private mTvMac:Landroid/widget/TextView;

.field private mType:I

.field private mView:Landroid/view/View;

.field nameWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "WifiApWhitelistDialog"

    sput-object v0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "type"
    .parameter "name"
    .parameter "mac"
    .parameter "listener"

    .prologue
    const/4 v1, 0x6

    .line 86
    const v0, 0x7f10002b

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    .line 72
    new-array v0, v1, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    .line 76
    new-instance v0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog$1;-><init>(Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mMacFilter:Landroid/text/InputFilter;

    .line 217
    new-instance v0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog$2;-><init>(Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    .line 87
    iput p2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    .line 88
    iput-object p3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    return-void

    .line 63
    :array_0
    .array-data 0x4
        0x44t 0x3t 0xbt 0x7ft
        0x45t 0x3t 0xbt 0x7ft
        0x46t 0x3t 0xbt 0x7ft
        0x47t 0x3t 0xbt 0x7ft
        0x48t 0x3t 0xbt 0x7ft
        0x49t 0x3t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    return-void
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, enabled:Z
    iget v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 238
    const/4 v0, 0x1

    .line 244
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v2, :cond_1

    .line 245
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 247
    const/4 v0, 0x0

    .line 253
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    return-void

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 241
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    .restart local v1       #i:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, -0x1

    const v9, 0x7f0902dd

    const v8, 0x7f0b0341

    const/4 v7, 0x1

    const/16 v6, 0x8

    .line 98
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040117

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    .line 100
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->setView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->setInverseBackgroundForced(Z)V

    .line 103
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0342

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    .line 104
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0319

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    .line 105
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b034a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    .line 106
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacId:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v3, v0

    .line 108
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    new-instance v3, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;

    invoke-direct {v3, p0, v0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;-><init>(Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;I)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mMacFilter:Landroid/text/InputFilter;

    aput-object v5, v3, v4

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 110
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const/16 v3, 0x91

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 111
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    iget v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-nez v2, :cond_1

    .line 115
    const v2, 0x7f0902d6

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 116
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 118
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    const v3, 0x7f0b0344

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 147
    :goto_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0905e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v10, v2, v3}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 149
    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090357

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->nameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0, v10}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mButtonOk:Landroid/widget/Button;

    .line 156
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V

    .line 157
    return-void

    .line 120
    :cond_1
    iget v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    if-ne v2, v7, :cond_2

    .line 121
    const v2, 0x7f0902d6

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 122
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 126
    :cond_2
    iget v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 127
    const v2, 0x7f0902db

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 128
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0340

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    .line 134
    .local v1, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0343

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b034a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 137
    .end local v1           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :cond_3
    const v2, 0x7f090257

    invoke-virtual {p0, v2}, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->setTitle(I)V

    .line 138
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMac:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 143
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mTvMac:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApWhitelistDialog;->mEtDeviceName:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_1
.end method
