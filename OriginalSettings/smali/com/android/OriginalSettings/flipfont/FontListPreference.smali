.class public Lcom/android/OriginalSettings/flipfont/FontListPreference;
.super Landroid/preference/ListPreference;
.source "FontListPreference.java"


# instance fields
.field SetFontToAlert:Landroid/app/AlertDialog;

.field private context:Landroid/content/Context;

.field private mBuyButtonClicked:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 64
    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    .line 67
    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 71
    iput v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 74
    iput v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 77
    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFileCopying:Z

    .line 83
    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mQuestionDialogFontSize:I

    .line 86
    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogLeftPadding:I

    .line 88
    iput v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogTopPadding:I

    .line 90
    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogRightPadding:I

    .line 92
    iput v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDialogBottomPadding:I

    .line 97
    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 99
    iput v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 110
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    .line 111
    const-string v0, "MONOTYPE"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setKey(Ljava/lang/String;)V

    .line 112
    const v0, 0x7f0b06b5

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setTitle(I)V

    .line 113
    const v0, 0x7f0b06b6

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setSummary(I)V

    .line 114
    const v0, 0x7f0b06b7

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 115
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setNegativeButtonText(I)V

    .line 116
    const v0, 0x7f02003a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setDialogIcon(I)V

    .line 118
    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/flipfont/FontListPreference;Lcom/android/OriginalSettings/flipfont/FontListAdapter;)Lcom/android/OriginalSettings/flipfont/FontListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    return p1
.end method


# virtual methods
.method public loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, mode:I
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 495
    .local v1, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "SelectDialogIsActive"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 496
    const-string v2, "SavedClickedItem"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 497
    return-void
.end method

.method public onCancelButtonPressed()V
    .locals 4

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 326
    .local v0, d:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 328
    .local v1, v:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 329
    iget v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 332
    .end local v1           #v:Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 342
    invoke-super {p0, p1, p2}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 344
    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    if-ne p2, v4, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const/4 v4, -0x2

    if-ne p2, v4, :cond_3

    .line 349
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 350
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    .line 352
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 357
    :cond_3
    const/4 v2, 0x0

    .line 358
    .local v2, question:Ljava/lang/String;
    const/4 v1, 0x0

    .line 359
    .local v1, fontName:Ljava/lang/String;
    iput p2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 360
    if-ge p2, v7, :cond_4

    .line 361
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 363
    .local v3, s:Ljava/lang/String;
    move-object v2, v3

    .line 374
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b008e

    new-instance v5, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$3;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b008f

    new-instance v6, Lcom/android/OriginalSettings/flipfont/FontListPreference$2;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$2;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    new-instance v4, Lcom/android/OriginalSettings/flipfont/FontListPreference$4;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$4;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 396
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    .line 398
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->SetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 399
    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    iput v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 400
    iput-boolean v7, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 401
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    goto :goto_0

    .line 365
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b06b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 367
    .restart local v3       #s:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    if-nez v4, :cond_5

    .line 368
    new-instance v4, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 369
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 371
    :cond_5
    iget-object v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 456
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 457
    iget-boolean v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b06bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 460
    .local v1, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 461
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 462
    iget-object v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 463
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mBuyButtonClicked:Z

    .line 465
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onOkButtonPressed()V
    .locals 29

    .prologue
    .line 221
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : mClickedItem : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 227
    :goto_0
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    if-nez v26, :cond_0

    .line 231
    new-instance v26, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 235
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 236
    .local v24, selectedFont:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->persistString(Ljava/lang/String;)Z

    .line 238
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 240
    new-instance v13, Lcom/android/OriginalSettings/flipfont/FontWriter;

    invoke-direct {v13}, Lcom/android/OriginalSettings/flipfont/FontWriter;-><init>()V

    .line 241
    .local v13, fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    if-eqz v24, :cond_1

    const-string v26, "default"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 243
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "sans.loc"

    const-string v28, "default"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/OriginalSettings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    if-nez v24, :cond_3

    .line 246
    const-string v26, "FontListPreference"

    const-string v27, "onOkButtonPressed() : selectedFont == null "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_1
    return-void

    .line 225
    .end local v13           #fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    .end local v24           #selectedFont:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    goto/16 :goto_0

    .line 251
    .restart local v13       #fontWriter:Lcom/android/OriginalSettings/flipfont/FontWriter;
    .restart local v24       #selectedFont:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/OriginalSettings/flipfont/TypefaceFinder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/OriginalSettings/flipfont/Typeface;

    move-result-object v23

    .line 253
    .local v23, sansTypeface:Lcom/android/OriginalSettings/flipfont/Typeface;
    const-string v26, ".xml"

    const-string v27, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 254
    .local v14, fontdir:Ljava/lang/String;
    const-string v26, " "

    const-string v27, "-"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v14}, Lcom/android/OriginalSettings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 257
    .local v12, fontDir:Ljava/io/File;
    const/16 v25, 0x0

    .line 258
    .local v25, tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    if-eqz v23, :cond_4

    .line 259
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v15, v0, :cond_4

    .line 260
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    check-cast v25, Lcom/android/OriginalSettings/flipfont/TypefaceFile;

    .line 263
    .restart local v25       #tpf:Lcom/android/OriginalSettings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, apkname:Ljava/lang/String;
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onOkButtonPressed : Application name, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v21

    .line 268
    .local v21, res:Landroid/content/res/Resources;
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    .line 270
    .local v8, assetManager:Landroid/content/res/AssetManager;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "fonts/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Lcom/android/OriginalSettings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 272
    .local v17, in:Ljava/io/InputStream;
    invoke-virtual/range {v25 .. v25}, Lcom/android/OriginalSettings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v13, v12, v0, v1}, Lcom/android/OriginalSettings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v7           #apkname:Ljava/lang/String;
    .end local v8           #assetManager:Landroid/content/res/AssetManager;
    .end local v17           #in:Ljava/io/InputStream;
    .end local v21           #res:Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 273
    :catch_0
    move-exception v11

    .line 274
    .local v11, ex:Ljava/lang/Exception;
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception in file operation, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 279
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v15           #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "sans.loc"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/OriginalSettings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    .line 283
    .local v6, am:Landroid/app/IActivityManager;
    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 284
    .local v9, config:Landroid/content/res/Configuration;
    new-instance v20, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 285
    .local v20, randomizer:Ljava/util/Random;
    const/16 v19, 0x0

    .line 286
    .local v19, min:I
    const/16 v18, 0x2710

    .line 287
    .local v18, max:I
    const/16 v26, 0x2711

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v26

    add-int v26, v26, v19

    move/from16 v0, v26

    iput v0, v9, Landroid/content/res/Configuration;->FlipFont:I

    .line 288
    invoke-interface {v6, v9}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    .end local v6           #am:Landroid/app/IActivityManager;
    .end local v9           #config:Landroid/content/res/Configuration;
    .end local v18           #max:I
    .end local v19           #min:I
    .end local v20           #randomizer:Ljava/util/Random;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v27, "activity"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 298
    .local v4, activityManager:Landroid/app/ActivityManager;
    const/16 v26, 0x32

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 299
    .local v5, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v15, 0x1

    .line 300
    .restart local v15       #i:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 301
    .local v3, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 303
    .local v22, s:Ljava/lang/String;
    const-string v26, "com.android.settings"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-eqz v26, :cond_5

    .line 304
    const-string v26, "com.infraware.polarisoffice"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v26

    if-nez v26, :cond_6

    .line 306
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_5

    .line 291
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4           #activityManager:Landroid/app/ActivityManager;
    .end local v5           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v15           #i:I
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #s:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 293
    .local v10, e:Landroid/os/RemoteException;
    const-string v26, "FontListPreference"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Intentionally left blank, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 309
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v3       #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v4       #activityManager:Landroid/app/ActivityManager;
    .restart local v5       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v15       #i:I
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v22       #s:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_5

    .line 315
    .end local v3           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v22           #s:Ljava/lang/String;
    :cond_7
    const-string v26, "com.android.settings"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 317
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/System;->exit(I)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->restartLater()V

    goto/16 :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 135
    const-string v1, "MONOTYPE"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, selectedFont:Ljava/lang/String;
    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v1, "FontListPreference"

    const-string v2, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v1, "MONOTYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const-string v1, "FontListPreference"

    const-string v2, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-boolean v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mDefaultUseHelvetica:Z

    if-eqz v1, :cond_1

    .line 145
    const-string v0, "HelveticaNeueRegular.xml"

    .line 146
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 147
    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    iget v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    if-gez v1, :cond_0

    .line 167
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget v2, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {p1, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    const v1, 0x7f0b06b8

    new-instance v2, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$1;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    return-void

    .line 152
    :cond_1
    const-string v0, "default"

    .line 153
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 154
    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_2
    const-string v1, "FontListPreference"

    const-string v2, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    .line 162
    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v1, "FontListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public restartLater()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 213
    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 5

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, mode:I
    iget-object v3, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 481
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 483
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 484
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 486
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 487
    return-void
.end method

.method public selectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 405
    const/4 v3, 0x0

    .line 406
    .local v3, question:Ljava/lang/String;
    const/4 v2, 0x0

    .line 407
    .local v2, fontName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->loadPreferences()V

    .line 408
    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    .line 409
    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    if-ge v5, v8, :cond_0

    .line 410
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b06ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 412
    .local v4, s:Ljava/lang/String;
    move-object v3, v4

    .line 419
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b008e

    new-instance v6, Lcom/android/OriginalSettings/flipfont/FontListPreference$6;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$6;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b008f

    new-instance v7, Lcom/android/OriginalSettings/flipfont/FontListPreference$5;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$5;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    new-instance v5, Lcom/android/OriginalSettings/flipfont/FontListPreference$7;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference$7;-><init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 442
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 444
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 445
    iget v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    iput v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSavedClickedItem:I

    .line 446
    iput-boolean v8, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 447
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 448
    return-void

    .line 414
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b06b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 416
    .restart local v4       #s:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    .line 417
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mFontListAdapter:Lcom/android/OriginalSettings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 195
    const v0, 0x7f0b06bc

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->setDialogTitle(I)V

    .line 197
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->loadPreferences()V

    .line 199
    iget-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z

    .line 201
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 202
    invoke-virtual {p0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->selectDialog()V

    .line 204
    :cond_2
    return-void
.end method
