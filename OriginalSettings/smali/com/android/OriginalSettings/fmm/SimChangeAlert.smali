.class public Lcom/android/OriginalSettings/fmm/SimChangeAlert;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/fmm/SimChangeAlert$PreferenceArea;
    }
.end annotation


# static fields
.field private static mMessage:Landroid/preference/EditTextPreference;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContent:Landroid/widget/LinearLayout;

.field private mCreate:Landroid/widget/Button;

.field private mDialogLayout:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/fmm/SimChangeAlert;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/fmm/SimChangeAlert;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/fmm/SimChangeAlert;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/fmm/SimChangeAlert;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/fmm/SimChangeAlert;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400()Landroid/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$402(Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    sput-object p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    return-object p0
.end method


# virtual methods
.method public DoSave()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 276
    new-instance v8, Lcom/android/internal/util/NVStore;

    invoke-direct {v8}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 277
    .local v8, filenv:Lcom/android/internal/util/NVStore;
    const-string v10, ""

    .line 278
    .local v10, nvData:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, MTpwd:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v5, "1"

    .line 280
    .local v5, MTStatus:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0711

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, MTSender:Ljava/lang/String;
    sget-object v13, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, MTMsg:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, Imsi:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v2, "1"

    .line 285
    .local v2, MTEnabled:Ljava/lang/String;
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 288
    const/4 v7, 0x0

    .line 289
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget-object v13, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v9, v13, :cond_5

    .line 290
    iget-object v13, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 291
    .local v0, ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->isExist()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 292
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "00"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0b0728

    invoke-static {v13, v14, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 294
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setFocus()V

    .line 329
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    :goto_3
    return v12

    .line 279
    .end local v1           #Imsi:Ljava/lang/String;
    .end local v2           #MTEnabled:Ljava/lang/String;
    .end local v3           #MTMsg:Ljava/lang/String;
    .end local v4           #MTSender:Ljava/lang/String;
    .end local v5           #MTStatus:Ljava/lang/String;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_0
    const-string v5, "0"

    goto/16 :goto_0

    .line 283
    .restart local v1       #Imsi:Ljava/lang/String;
    .restart local v3       #MTMsg:Ljava/lang/String;
    .restart local v4       #MTSender:Ljava/lang/String;
    .restart local v5       #MTStatus:Ljava/lang/String;
    :cond_1
    const-string v2, "0"

    goto :goto_1

    .line 298
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .restart local v2       #MTEnabled:Ljava/lang/String;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 300
    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 301
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 289
    :cond_3
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 303
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "none;"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 307
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    :cond_5
    :goto_5
    const/4 v13, 0x5

    if-eq v7, v13, :cond_6

    .line 308
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "none;"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 309
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 313
    :cond_6
    if-eqz v3, :cond_7

    if-eqz v3, :cond_8

    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8

    .line 314
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0b0729

    invoke-static {v13, v14, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 319
    :cond_8
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 320
    .local v11, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_9

    if-eqz v1, :cond_a

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_a

    :cond_9
    const-string v1, "0000"

    .line 324
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 325
    const-string v12, "SimChangeAlert"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data formed for writing = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v12, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v8, v10, v12}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 329
    const/4 v12, 0x1

    goto/16 :goto_3
.end method

.method public init()V
    .locals 15

    .prologue
    const v14, 0x7f04004e

    const/4 v13, 0x0

    .line 207
    const/4 v3, 0x0

    .line 208
    .local v3, index:I
    new-instance v2, Lcom/android/internal/util/NVStore;

    invoke-direct {v2}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 211
    .local v2, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, rec1:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "none"

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    .line 213
    :cond_0
    const-string v6, ""

    .line 222
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, rec2:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "none"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    .line 224
    :cond_1
    const-string v7, ""

    .line 233
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, rec3:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "none"

    invoke-virtual {v8, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_9

    .line 235
    :cond_2
    const-string v8, ""

    .line 244
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, rec4:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "none"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    .line 246
    :cond_3
    const-string v9, ""

    .line 255
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    .line 256
    .local v10, rec5:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "none"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b

    .line 257
    :cond_4
    const-string v10, ""

    .line 265
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, msg:Ljava/lang/String;
    if-eqz v5, :cond_5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b072a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_6

    .line 267
    :cond_5
    const-string v5, ""

    .line 269
    :cond_6
    sget-object v11, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    sget-object v11, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 271
    return-void

    .line 215
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #rec2:Ljava/lang/String;
    .end local v8           #rec3:Ljava/lang/String;
    .end local v9           #rec4:Ljava/lang/String;
    .end local v10           #rec5:Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 216
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 218
    .local v0, ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_0

    .line 226
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v7       #rec2:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 227
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 229
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_1

    .line 237
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v8       #rec3:Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 238
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 240
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v8}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_2

    .line 248
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v9       #rec4:Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 249
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 251
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v9}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_3

    .line 259
    .end local v0           #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v10       #rec5:Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 260
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v11, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;

    .line 262
    .restart local v0       #ChildView:Lcom/android/OriginalSettings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v10}, Lcom/android/OriginalSettings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 169
    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->DoSave()Z

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    .line 80
    instance-of v3, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 81
    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 82
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 85
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 96
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 111
    const v1, 0x7f04008d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, view:Landroid/view/View;
    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    .line 114
    const v1, 0x7f0801b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mCreate:Landroid/widget/Button;

    .line 115
    iget-object v1, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mCreate:Landroid/widget/Button;

    new-instance v2, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert$1;-><init>(Lcom/android/OriginalSettings/fmm/SimChangeAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->init()V

    .line 164
    return-object v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 103
    iget-object v2, p0, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "change_alert"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 104
    return-void

    :cond_0
    move v0, v1

    .line 103
    goto :goto_0
.end method
