.class public Lcom/android/settings/personalvibration/SelectPatternDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field ButtonCenter:Landroid/widget/Button;

.field mCurrentSelection:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mExistingUri:Ljava/lang/String;

.field private mFromContact:Ljava/lang/Boolean;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field mOkBtn:Landroid/widget/Button;

.field private mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

.field private mShowDefault:Ljava/lang/Boolean;

.field private mStaticItem:I

.field vib:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    .line 74
    iput-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 81
    iput-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    .line 82
    iput-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->ButtonCenter:Landroid/widget/Button;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/android/settings/personalvibration/VibrationPatternListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "editable"

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, length:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 354
    if-gtz v0, :cond_0

    .line 355
    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ok btn is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 366
    return-void
.end method

.method public deletePattern(I)Z
    .locals 9
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 261
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePattern() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 264
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 265
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 266
    .local v8, id:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 268
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 272
    .local v7, count:I
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentSelection()I
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 376
    const/4 v7, -0x1

    .line 377
    .local v7, keyID:I
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 378
    .local v9, temp:Ljava/lang/String;
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSelection() temp : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-nez v9, :cond_0

    .line 380
    const-string v9, "content://com.android.settings.personalvibration.PersonalVibrationProvider/1"

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/1"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 386
    iget-object v9, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    .line 392
    :cond_1
    if-nez v9, :cond_3

    move v0, v10

    .line 425
    :goto_0
    return v0

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 388
    const-string v0, "SelectPatternDialog"

    const-string v1, "getCurrentSelection(),  (mFromContact && mExistingUri == null) is true, return 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v0, 0x0

    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 397
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 398
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 399
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_pattern"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 405
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 411
    if-eqz v6, :cond_9

    .line 412
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 414
    :cond_5
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v7, v0, :cond_7

    .line 415
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 416
    .local v8, position:I
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSelection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 418
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v0, v8

    goto/16 :goto_0

    .end local v8           #position:I
    :cond_6
    move v0, v10

    .line 407
    goto/16 :goto_0

    .line 420
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 422
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    move v0, v10

    .line 425
    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 433
    packed-switch p2, :pswitch_data_0

    .line 483
    :goto_0
    return-void

    .line 435
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int v11, v0, v1

    .line 436
    .local v11, position:I
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v0, -0x1

    if-ne v11, v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    const-string v0, "SelectPatternDialog"

    const-string v1, "onClick() - positive : index is -1 but from Contacts"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 441
    .local v12, resultIntent:Landroid/content/Intent;
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto :goto_0

    .line 445
    .end local v12           #resultIntent:Landroid/content/Intent;
    :cond_0
    const-string v0, "SelectPatternDialog"

    const-string v1, "onClick() - positive : index is -1 so break"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 450
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 451
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 452
    .local v8, index:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 454
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 456
    .restart local v12       #resultIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 457
    .local v10, pickedUriString:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 458
    .local v9, pickedUri:Landroid/net/Uri;
    invoke-virtual {v12, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 459
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 464
    .end local v9           #pickedUri:Landroid/net/Uri;
    .end local v10           #pickedUriString:Ljava/lang/String;
    .end local v12           #resultIntent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 461
    :cond_2
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : OK button is clicked before uri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_vibration_pattern"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 468
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #index:I
    .end local v11           #position:I
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(I)V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 473
    :pswitch_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 474
    .local v7, i:Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.personalvibration.PersonalVibration"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    const-string v0, "android.intent.extra.pattern.FROM_CONTACT"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 477
    const/high16 v0, 0x200

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 479
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->startActivity(Landroid/content/Intent;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 203
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 204
    .local v1, menuItemIndex:I
    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->getPatternName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected] :  info.position, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v5, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    packed-switch v1, :pswitch_data_0

    .line 222
    :goto_0
    return v7

    .line 209
    :pswitch_0
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/personalvibration/SelectPatternDialog;->deletePattern(I)Z

    .line 210
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 211
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->notifyDataSetChanged()V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 213
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 214
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 218
    :pswitch_1
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 92
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    .line 95
    const-string v6, "show_default"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    .line 98
    const-string v6, "android.intent.extra.pattern.EXISTING_URI"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    .line 101
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 103
    new-instance v6, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-direct {v6, p0}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    .line 104
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v6}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 108
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090ba0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 113
    :goto_0
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040053

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 114
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 115
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 116
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 117
    const v6, 0x7f09012d

    invoke-virtual {p0, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 118
    const v6, 0x7f0908e1

    invoke-virtual {p0, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 119
    const v6, 0x7f09003d

    invoke-virtual {p0, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 120
    iget-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v7, 0x7f0b00c9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    .line 122
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400f3

    iget-object v8, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    .line 126
    .local v4, textView:Landroid/widget/CheckedTextView;
    const-string v6, "SelectPatternDialog"

    const-string v7, "tw_select_dialog_singlechoice_holo"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const v6, 0x7f09066c

    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 129
    const/high16 v6, 0x41a0

    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setTextSize(F)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 132
    .local v5, wm:Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 139
    .local v1, density:I
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 140
    iput v10, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    .line 143
    .end local v1           #density:I
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #textView:Landroid/widget/CheckedTextView;
    .end local v5           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setupAlert()V

    .line 148
    new-instance v6, Landroid/os/SystemVibrator;

    invoke-direct {v6}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v6

    iput v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 151
    iget v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 152
    const-string v6, "SelectPatternDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate() positoin : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v6, v7, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 155
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 159
    :goto_1
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090b8e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 158
    :cond_2
    const-string v6, "SelectPatternDialog"

    const-string v7, "onCreate() positoin : -1"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v5, 0x7f0900a0

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 179
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00c9

    if-ne v0, v1, :cond_0

    move-object v7, p3

    .line 180
    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 182
    .local v7, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/lit8 v1, v1, 0x6

    if-ge v0, v1, :cond_1

    .line 183
    const-string v0, "SelectPatternDialog"

    const-string v1, "onCreateContextMenu] : Noting to add"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v7           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v7       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    if-ne v0, v1, :cond_2

    .line 186
    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 192
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 193
    .local v6, c:Landroid/database/Cursor;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 194
    const-string v0, "vibration_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, menu_title:Ljava/lang/String;
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 188
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #menu_title:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    const v1, 0x7f0907c5

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 189
    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 282
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 283
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 229
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr p3, v0

    .line 230
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 233
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 234
    const-string v0, "SelectPatternDialog"

    const-string v1, "onItemClick() : Default is clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 236
    .local v10, temp:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 237
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 240
    .local v8, patternLong:[J
    if-eqz v8, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 243
    .end local v8           #patternLong:[J
    .end local v9           #patternString:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 258
    .end local v10           #temp:Ljava/lang/String;
    :goto_0
    return-void

    .line 247
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 249
    .restart local v6       #c:Landroid/database/Cursor;
    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 250
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 251
    .local v7, index:I
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 252
    .restart local v9       #patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 253
    .restart local v8       #patternLong:[J
    if-eqz v8, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 255
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() : content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 487
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 489
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    .line 175
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 165
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 372
    return-void
.end method

.method showRenameDialog(I)Z
    .locals 13
    .parameter "position"

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 286
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRenameDialog() position : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 289
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 290
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_pattern"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c.getPosition() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const v0, 0x7f04009b

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 297
    .local v11, view:Landroid/view/View;
    const v0, 0x7f0b018a

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 298
    .local v6, EditPattern:Landroid/widget/TextView;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 299
    .local v8, id:I
    const/16 v10, 0x1a

    .line 301
    .local v10, maxLength:I
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 302
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, "vibration_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v6

    .line 304
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    move-object v0, v6

    .line 305
    check-cast v0, Landroid/widget/EditText;

    new-array v1, v12, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 306
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 309
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090b95

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908e1

    new-instance v2, Lcom/android/settings/personalvibration/SelectPatternDialog$2;

    invoke-direct {v2, p0, v6, v8, v9}, Lcom/android/settings/personalvibration/SelectPatternDialog$2;-><init>(Lcom/android/settings/personalvibration/SelectPatternDialog;Landroid/widget/TextView;ILandroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09012d

    new-instance v2, Lcom/android/settings/personalvibration/SelectPatternDialog$1;

    invoke-direct {v2, p0, v9, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog$1;-><init>(Lcom/android/settings/personalvibration/SelectPatternDialog;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 339
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 342
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    .line 343
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 345
    return v12
.end method
