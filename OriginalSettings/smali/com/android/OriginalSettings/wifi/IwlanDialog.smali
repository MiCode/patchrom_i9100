.class public Lcom/android/settings/wifi/IwlanDialog;
.super Landroid/app/AlertDialog;
.source "IwlanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final FORMAT_IP_ADDRESS_EDIT:Ljava/lang/String;

.field final edit:Z

.field private mContext:Landroid/content/Context;

.field private mIsValid:Z

.field private final mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

.field private mPdgAddress:Landroid/widget/TextView;

.field private mPdgName:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/IwlanDialog;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V
    .locals 1
    .parameter "context"
    .parameter "iwlanNetwork"
    .parameter "edit"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "^[0-9.]*$"

    iput-object v0, p0, Lcom/android/settings/wifi/IwlanDialog;->FORMAT_IP_ADDRESS_EDIT:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    .line 52
    iput-boolean p3, p0, Lcom/android/settings/wifi/IwlanDialog;->edit:Z

    .line 53
    iput-object p2, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    .line 54
    iput-object p1, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040077

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 145
    const v1, 0x7f0b0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method private isIPv4Address(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 226
    sget-object v0, Lcom/android/settings/wifi/IwlanDialog;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v1, 0x7f090ce4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/IwlanDialog;->showAlertDialog(Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNameValid(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 235
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f090ce1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/IwlanDialog;->showAlertDialog(Ljava/lang/String;)V

    .line 248
    :goto_0
    return v2

    .line 240
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 242
    .local v1, temp:C
    const/16 v3, 0x61

    if-lt v1, v3, :cond_2

    const/16 v3, 0x7a

    if-le v1, v3, :cond_5

    :cond_2
    const/16 v3, 0x41

    if-lt v1, v3, :cond_3

    const/16 v3, 0x5a

    if-le v1, v3, :cond_5

    :cond_3
    const/16 v3, 0x30

    if-lt v1, v3, :cond_4

    const/16 v3, 0x39

    if-le v1, v3, :cond_5

    :cond_4
    const/16 v3, 0x2e

    if-eq v1, v3, :cond_5

    .line 243
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f090ce2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/IwlanDialog;->showAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 248
    .end local v1           #temp:C
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f090cea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/IwlanDialog$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/IwlanDialog$2;-><init>(Lcom/android/settings/wifi/IwlanDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 259
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 151
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 155
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 223
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanDialog;->dismiss()V

    .line 215
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    .line 216
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v4, 0x1

    .line 170
    const/4 v3, -0x3

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v3}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, pdgName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "actoin.IWLAN_ACTIVITY_REQUEST_DELETE_IWLAN_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "extra.IWLAN_PDG_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #pdgName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const/4 v3, -0x1

    if-ne p2, v3, :cond_6

    .line 178
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-nez v3, :cond_4

    .line 179
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2       #pdgName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgAddress:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, padAddress:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/IwlanDialog;->isNameValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/IwlanDialog;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 183
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    goto :goto_0

    .line 186
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v3, "actoin.IWLAN_ACTIVITY_REQUEST_SAVE_IWLAN_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "extra.IWLAN_PDG_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v3, "extra.IWLAN_PDG_ADDRESS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #padAddress:Ljava/lang/String;
    .end local v2           #pdgName:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v3}, Lcom/android/settings/wifi/IwlanNetwork;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v3, "actoin.IWLAN_ACTIVITY_REQUEST_DISCONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 198
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v3}, Lcom/android/settings/wifi/IwlanNetwork;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v3}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v2

    .line 201
    .restart local v2       #pdgName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "actoin.IWLAN_ACTIVITY_REQUEST_CONNECT_IWLAN_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "extra.IWLAN_PDG_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v3, "extra.IWLAN_CONNECT_FROM_DIALOG"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    iget-object v3, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 206
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #pdgName:Ljava/lang/String;
    :cond_6
    const/4 v3, -0x2

    if-ne p2, v3, :cond_0

    .line 207
    iput-boolean v4, p0, Lcom/android/settings/wifi/IwlanDialog;->mIsValid:Z

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/wifi/IwlanDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040076

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    .line 71
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/IwlanDialog;->setView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/IwlanDialog;->setInverseBackgroundForced(Z)V

    .line 74
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-nez v5, :cond_0

    .line 75
    const v5, 0x7f090cd6

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/IwlanDialog;->setTitle(I)V

    .line 76
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b013e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b013f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgName:Landroid/widget/TextView;

    .line 78
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgName:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b0140

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgAddress:Landroid/widget/TextView;

    .line 81
    new-array v0, v11, [Landroid/text/InputFilter;

    .line 82
    .local v0, filters:[Landroid/text/InputFilter;
    new-instance v2, Lcom/android/settings/wifi/IwlanDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/IwlanDialog$1;-><init>(Lcom/android/settings/wifi/IwlanDialog;)V

    .line 105
    .local v2, inputFilter:Landroid/text/InputFilter;
    aput-object v2, v0, v9

    .line 106
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgAddress:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 107
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mPdgAddress:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090ce8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8, v5, p0}, Lcom/android/settings/wifi/IwlanDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 110
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090ce9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v10, v5, p0}, Lcom/android/settings/wifi/IwlanDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 139
    .end local v0           #filters:[Landroid/text/InputFilter;
    .end local v2           #inputFilter:Landroid/text/InputFilter;
    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 140
    return-void

    .line 112
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v5}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v6}, Lcom/android/settings/wifi/IwlanNetwork;->getDefaultPdgDomainName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 113
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090cd4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/IwlanDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mView:Landroid/view/View;

    const v6, 0x7f0b013d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 119
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 120
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v5}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, pdgName:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 122
    const v5, 0x7f090cde

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/wifi/IwlanDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 125
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v5}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, pdgAddress:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 127
    const v5, 0x7f090cdf

    invoke-direct {p0, v1, v5, v3}, Lcom/android/settings/wifi/IwlanDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 130
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v5}, Lcom/android/settings/wifi/IwlanNetwork;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 131
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090ce6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8, v5, p0}, Lcom/android/settings/wifi/IwlanDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 132
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090cea

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v10, v5, p0}, Lcom/android/settings/wifi/IwlanDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 115
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v3           #pdgAddress:Ljava/lang/String;
    .end local v4           #pdgName:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v5}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/IwlanDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    .restart local v1       #group:Landroid/view/ViewGroup;
    .restart local v3       #pdgAddress:Ljava/lang/String;
    .restart local v4       #pdgName:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090ce5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v8, v5, p0}, Lcom/android/settings/wifi/IwlanDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 135
    const/4 v5, -0x3

    iget-object v6, p0, Lcom/android/settings/wifi/IwlanDialog;->mContext:Landroid/content/Context;

    const v7, 0x7f090ce7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p0}, Lcom/android/settings/wifi/IwlanDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 159
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 60
    iget-object v1, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v1}, Lcom/android/settings/wifi/IwlanNetwork;->getPdgDomainName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v2}, Lcom/android/settings/wifi/IwlanNetwork;->getDefaultPdgDomainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/IwlanDialog;->mIwlanNetwork:Lcom/android/settings/wifi/IwlanNetwork;

    invoke-virtual {v1}, Lcom/android/settings/wifi/IwlanNetwork;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const/4 v1, -0x3

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/IwlanDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 64
    .local v0, button:Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 66
    .end local v0           #button:Landroid/widget/Button;
    :cond_0
    return-void
.end method
