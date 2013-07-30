.class public Lcom/android/sec_settings/fmm/SimChangeAlert;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/fmm/SimChangeAlert$PreferenceArea;
    }
.end annotation


# static fields
.field public static chkboxFlag:Z

.field private static mMessage:Landroid/preference/EditTextPreference;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContact:Landroid/widget/Button;

.field private mContent:Landroid/widget/LinearLayout;

.field private mCreate:Landroid/widget/Button;

.field private mDialogLayout:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/fmm/SimChangeAlert;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/sec_settings/fmm/SimChangeAlert;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/sec_settings/fmm/SimChangeAlert;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/sec_settings/fmm/SimChangeAlert;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/sec_settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/fmm/SimChangeAlert;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/fmm/SimChangeAlert;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/fmm/SimChangeAlert;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/sec_settings/fmm/SimChangeAlert;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700()Landroid/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$702(Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput-object p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    return-object p0
.end method


# virtual methods
.method public DoSave()Z
    .locals 17

    .prologue
    .line 403
    new-instance v10, Lcom/android/internal/util/NVStore;

    invoke-direct {v10}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 404
    .local v10, filenv:Lcom/android/internal/util/NVStore;
    const-string v12, ""

    .line 405
    .local v12, nvData:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, MTpwd:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v6, "1"

    .line 407
    .local v6, MTStatus:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090916

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, MTSender:Ljava/lang/String;
    sget-object v14, Lcom/android/sec_settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, MTMsg:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, Imsi:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v3, "1"

    .line 412
    .local v3, MTEnabled:Ljava/lang/String;
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 415
    const/4 v9, 0x0

    .line 416
    .local v9, count:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v14

    if-ge v11, v14, :cond_6

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/fmm/RecipientsMinusView;

    .line 418
    .local v1, ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    invoke-virtual {v1}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 419
    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, SalesCode:Ljava/lang/String;
    const-string v14, "CHN"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "CHM"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "CHU"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "LGT"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 422
    :cond_0
    invoke-virtual {v1}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v1}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    const-string v15, "00"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f09092d

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 424
    invoke-virtual {v1}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->setFocus()V

    .line 425
    const/4 v14, 0x0

    .line 468
    .end local v1           #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    .end local v8           #SalesCode:Ljava/lang/String;
    :goto_3
    return v14

    .line 406
    .end local v2           #Imsi:Ljava/lang/String;
    .end local v3           #MTEnabled:Ljava/lang/String;
    .end local v4           #MTMsg:Ljava/lang/String;
    .end local v5           #MTSender:Ljava/lang/String;
    .end local v6           #MTStatus:Ljava/lang/String;
    .end local v9           #count:I
    .end local v11           #i:I
    :cond_1
    const-string v6, "0"

    goto/16 :goto_0

    .line 410
    .restart local v2       #Imsi:Ljava/lang/String;
    .restart local v4       #MTMsg:Ljava/lang/String;
    .restart local v5       #MTSender:Ljava/lang/String;
    .restart local v6       #MTStatus:Ljava/lang/String;
    :cond_2
    const-string v3, "0"

    goto/16 :goto_1

    .line 429
    .restart local v1       #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    .restart local v3       #MTEnabled:Ljava/lang/String;
    .restart local v8       #SalesCode:Ljava/lang/String;
    .restart local v9       #count:I
    .restart local v11       #i:I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 431
    invoke-virtual {v1}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_5

    .line 432
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 416
    .end local v8           #SalesCode:Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 434
    .restart local v8       #SalesCode:Ljava/lang/String;
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "none;"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 438
    .end local v1           #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    .end local v8           #SalesCode:Ljava/lang/String;
    :cond_6
    :goto_5
    const/4 v14, 0x5

    if-eq v9, v14, :cond_7

    .line 439
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "none;"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 440
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 444
    :cond_7
    if-eqz v4, :cond_8

    if-eqz v4, :cond_9

    const-string v14, ""

    invoke-virtual {v4, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_9

    .line 445
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x7f09092e

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 446
    const/4 v14, 0x0

    goto :goto_3

    .line 450
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 451
    .local v13, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 452
    if-eqz v2, :cond_a

    if-eqz v2, :cond_b

    const-string v14, ""

    invoke-virtual {v2, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_b

    :cond_a
    const-string v2, "0000"

    .line 462
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 464
    const-string v14, "SimChangeAlert"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "data formed for writing = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v14, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v10, v12, v14}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 468
    const/4 v14, 0x1

    goto/16 :goto_3
.end method

.method public SetContactNumber(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v13, 0x3b

    .line 486
    const/4 v2, 0x0

    .line 488
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 489
    iget-object v9, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fmm/RecipientsMinusView;

    .line 490
    .local v0, ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 492
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_1

    .line 493
    add-int/lit8 v3, v2, 0x1

    .end local v2           #count:I
    .local v3, count:I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 494
    .local v8, result:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 495
    .local v7, phNum:Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v2, v3

    .line 488
    .end local v3           #count:I
    .end local v7           #phNum:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    .restart local v2       #count:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 502
    .end local v0           #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    :cond_1
    iget-object v9, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 504
    .local v5, mViewIndex:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_2

    .line 505
    iget-object v9, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f04007a

    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 506
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 507
    iget-object v9, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #mViewIndex:I
    .local v6, mViewIndex:I
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fmm/RecipientsMinusView;

    .line 509
    .restart local v0       #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #count:I
    .restart local v3       #count:I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 510
    .restart local v8       #result:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 511
    .restart local v7       #phNum:Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v5, v6

    .end local v6           #mViewIndex:I
    .restart local v5       #mViewIndex:I
    move v2, v3

    .line 512
    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .line 513
    .end local v0           #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .end local v7           #phNum:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getCountFilledRecipient()I
    .locals 4

    .prologue
    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 474
    iget-object v3, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fmm/RecipientsMinusView;

    .line 475
    .local v0, ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 477
    add-int/lit8 v1, v1, 0x1

    .line 473
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v0           #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    :cond_1
    return v1
.end method

.method public init()V
    .locals 15

    .prologue
    const v14, 0x7f04007a

    const/4 v13, 0x0

    .line 334
    const/4 v3, 0x0

    .line 335
    .local v3, index:I
    new-instance v2, Lcom/android/internal/util/NVStore;

    invoke-direct {v2}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 338
    .local v2, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, rec1:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "none"

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    .line 340
    :cond_0
    const-string v6, ""

    .line 349
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, rec2:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "none"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    .line 351
    :cond_1
    const-string v7, ""

    .line 360
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, rec3:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "none"

    invoke-virtual {v8, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_9

    .line 362
    :cond_2
    const-string v8, ""

    .line 371
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v9

    .line 372
    .local v9, rec4:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "none"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    .line 373
    :cond_3
    const-string v9, ""

    .line 382
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    .line 383
    .local v10, rec5:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "none"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b

    .line 384
    :cond_4
    const-string v10, ""

    .line 392
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v5

    .line 393
    .local v5, msg:Ljava/lang/String;
    if-eqz v5, :cond_5

    if-eqz v5, :cond_6

    const-string v11, "Keep this message."

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_6

    .line 394
    :cond_5
    const-string v5, ""

    .line 396
    :cond_6
    sget-object v11, Lcom/android/sec_settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 397
    sget-object v11, Lcom/android/sec_settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 398
    return-void

    .line 342
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #rec2:Ljava/lang/String;
    .end local v8           #rec3:Ljava/lang/String;
    .end local v9           #rec4:Ljava/lang/String;
    .end local v10           #rec5:Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 343
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fmm/RecipientsMinusView;

    .line 345
    .local v0, ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v6}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_0

    .line 353
    .end local v0           #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v7       #rec2:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 354
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fmm/RecipientsMinusView;

    .line 356
    .restart local v0       #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v7}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_1

    .line 364
    .end local v0           #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v8       #rec3:Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 365
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 366
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fmm/RecipientsMinusView;

    .line 367
    .restart local v0       #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v8}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_2

    .line 375
    .end local v0           #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v9       #rec4:Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 376
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fmm/RecipientsMinusView;

    .line 378
    .restart local v0       #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v9}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_3

    .line 386
    .end local v0           #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v10       #rec5:Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 387
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    iget-object v11, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/fmm/RecipientsMinusView;

    .line 389
    .restart local v0       #ChildView:Lcom/android/sec_settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v10}, Lcom/android/sec_settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 233
    invoke-super {p0, p1, p2, p3}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 235
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 239
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->SetContactNumber(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 217
    if-eqz p2, :cond_2

    .line 218
    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/sec_settings/fmm/SimChangeAlert;->chkboxFlag:Z

    if-nez v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->DoSave()Z

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

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

    .line 98
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    .line 107
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 108
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 110
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 112
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 115
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    .line 123
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/sec_settings/fmm/SimChangeAlert;->setHasOptionsMenu(Z)V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v1, 0x0

    .line 517
    iput-object p1, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mOptionsMenu:Landroid/view/Menu;

    .line 519
    const v0, 0x7f090859

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 522
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 523
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 153
    const v2, 0x7f0400e8

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0292

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    .line 156
    const-string v2, "LGT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const v2, 0x7f0b028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, textView:Landroid/widget/TextView;
    const v2, 0x7f090929

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 161
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    const v2, 0x7f0b0290

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mCreate:Landroid/widget/Button;

    .line 162
    iget-object v2, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mCreate:Landroid/widget/Button;

    new-instance v3, Lcom/android/sec_settings/fmm/SimChangeAlert$1;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/fmm/SimChangeAlert$1;-><init>(Lcom/android/sec_settings/fmm/SimChangeAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v2, 0x7f0b0291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    .line 199
    iget-object v2, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    new-instance v3, Lcom/android/sec_settings/fmm/SimChangeAlert$2;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/fmm/SimChangeAlert$2;-><init>(Lcom/android/sec_settings/fmm/SimChangeAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->init()V

    .line 212
    return-object v1
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 548
    .local v2, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b028d

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 550
    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 558
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 561
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 562
    return-void

    .line 551
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v2       #transaction:Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SimChangeAlert"

    const-string v4, "can\'t perform transaction.commit()"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 534
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 541
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 536
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->DoSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->finishFragment()V

    .line 538
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 527
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 529
    iget-object v0, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 530
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 129
    iget-object v2, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "change_alert"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    return-void

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onStop()V

    .line 144
    iget-object v0, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/sec_settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040092

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 246
    .local v2, mDialogLayout:Landroid/view/View;
    const v3, 0x7f0b0176

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 247
    .local v0, chkbox:Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/sec_settings/fmm/SimChangeAlert$3;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/fmm/SimChangeAlert$3;-><init>(Lcom/android/sec_settings/fmm/SimChangeAlert;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090d24

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/sec_settings/fmm/SimChangeAlert$5;

    invoke-direct {v5, p0, v0}, Lcom/android/sec_settings/fmm/SimChangeAlert$5;-><init>(Lcom/android/sec_settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/sec_settings/fmm/SimChangeAlert$4;

    invoke-direct {v5, p0, v0}, Lcom/android/sec_settings/fmm/SimChangeAlert$4;-><init>(Lcom/android/sec_settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 278
    .local v1, dialog:Landroid/app/Dialog;
    return-void
.end method
