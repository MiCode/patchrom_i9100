.class public Lcom/android/sec_settings/NotificationPanel;
.super Landroid/app/Activity;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field NotipicationPanelName:Landroid/widget/TextView;

.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightnessChk:Landroid/widget/CheckBox;

.field private mBrightnessListener:Landroid/view/View$OnClickListener;

.field private mCandidateNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDragShadowBuilder:Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;

.field private mEntCnt:I

.field mIconDragListener:Landroid/view/View$OnDragListener;

.field private mIsOnDragging:Z

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mNotificationPanel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPanelItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPanelTextView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfActiveNotificationPanel:I

.field private mNumOfCandidateNotificationPanel:I

.field private mOldDropItem:I

.field private mOnDragItem:I

.field private mPositionBar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mTextDragListener:Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput v1, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfActiveNotificationPanel:I

    .line 87
    iput v1, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfCandidateNotificationPanel:I

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    .line 98
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    .line 99
    iput-boolean v1, p0, Lcom/android/sec_settings/NotificationPanel;->mIsOnDragging:Z

    .line 102
    iput v1, p0, Lcom/android/sec_settings/NotificationPanel;->mEntCnt:I

    .line 103
    iput v1, p0, Lcom/android/sec_settings/NotificationPanel;->mOldDropItem:I

    .line 298
    new-instance v0, Lcom/android/sec_settings/NotificationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/NotificationPanel$1;-><init>(Lcom/android/sec_settings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mBrightnessListener:Landroid/view/View$OnClickListener;

    .line 552
    new-instance v0, Lcom/android/sec_settings/NotificationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/NotificationPanel$2;-><init>(Lcom/android/sec_settings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 597
    new-instance v0, Lcom/android/sec_settings/NotificationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/NotificationPanel$3;-><init>(Lcom/android/sec_settings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mIconDragListener:Landroid/view/View$OnDragListener;

    .line 644
    new-instance v0, Lcom/android/sec_settings/NotificationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/NotificationPanel$4;-><init>(Lcom/android/sec_settings/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mTextDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method private DropItemPos(Landroid/view/View;I)I
    .locals 3
    .parameter "iv"
    .parameter "usedType"

    .prologue
    const/16 v2, 0x14

    .line 575
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_2

    .line 576
    const/4 v0, 0x0

    .local v0, dropItemPosition:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/sec_settings/NotificationPanel;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    .end local v0           #dropItemPosition:I
    :cond_0
    :goto_1
    return v0

    .line 576
    .restart local v0       #dropItemPosition:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    .end local v0           #dropItemPosition:I
    :cond_2
    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_3

    .line 581
    const/4 v0, 0x0

    .restart local v0       #dropItemPosition:I
    :goto_2
    if-ge v0, v2, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 585
    .end local v0           #dropItemPosition:I
    :cond_3
    const/16 v1, 0x3ea

    if-ne p2, v1, :cond_4

    .line 586
    const/4 v0, 0x0

    .restart local v0       #dropItemPosition:I
    :goto_3
    if-ge v0, v2, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelTextView:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 591
    .end local v0           #dropItemPosition:I
    :cond_4
    const-string v1, "NotificationPanel"

    const-string v2, "Don\'t match any type"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private LoadAppslist()V
    .locals 12

    .prologue
    const/16 v11, 0x3b

    .line 407
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "notification_panel_active_app_list"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, active_app_list:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "notification_panel_candidate_app_list"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, cadidate_app_list:Ljava/lang/String;
    const-string v1, ""

    .line 410
    .local v1, active_content:Ljava/lang/String;
    const-string v3, ""

    .line 411
    .local v3, cadidate_content:Ljava/lang/String;
    const-string v4, ""

    .line 412
    .local v4, convertPanelString:Ljava/lang/String;
    const/4 v6, 0x0

    .line 413
    .local v6, index:I
    const/4 v7, 0x0

    .line 414
    .local v7, old_index:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 415
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    .line 417
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 418
    invoke-virtual {v0, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 419
    iget v8, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfActiveNotificationPanel:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfActiveNotificationPanel:I

    .line 417
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 422
    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 423
    invoke-virtual {v2, v11, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 424
    iget v8, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfCandidateNotificationPanel:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfCandidateNotificationPanel:I

    .line 422
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 427
    :cond_1
    const-string v8, "NotificationPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Load] active_app_list : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v8, "NotificationPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Load] cadidate_app_list : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    iget v8, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfActiveNotificationPanel:I

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfCandidateNotificationPanel:I

    if-nez v8, :cond_3

    .line 457
    :cond_2
    return-void

    .line 433
    :cond_3
    const/4 v5, 0x0

    :goto_2
    iget v8, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfActiveNotificationPanel:I

    if-ge v5, v8, :cond_5

    .line 434
    move v7, v6

    .line 435
    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 436
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 437
    add-int/lit8 v6, v6, 0x1

    .line 438
    iget-object v8, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #convertPanelString:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 440
    .restart local v4       #convertPanelString:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 441
    iget-object v8, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_4
    const-string v8, "NotificationPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Load] active_content : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 445
    :cond_5
    const/4 v6, 0x0

    .line 446
    const/4 v5, 0x0

    :goto_3
    iget v8, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfCandidateNotificationPanel:I

    if-ge v5, v8, :cond_2

    .line 447
    move v7, v6

    .line 448
    invoke-virtual {v2, v11, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 449
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 450
    add-int/lit8 v6, v6, 0x1

    .line 451
    iget-object v8, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #convertPanelString:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 453
    .restart local v4       #convertPanelString:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 454
    iget-object v8, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_6
    const-string v8, "NotificationPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Load] cadidate_content : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private SaveAppslist()V
    .locals 9

    .prologue
    .line 460
    const-string v0, ""

    .line 461
    .local v0, active_app_list:Ljava/lang/String;
    const-string v2, ""

    .line 462
    .local v2, candidate_app_list:Ljava/lang/String;
    const-string v1, ""

    .line 463
    .local v1, active_content:Ljava/lang/String;
    const-string v3, ""

    .line 464
    .local v3, candidate_content:Ljava/lang/String;
    const-string v4, ""

    .line 466
    .local v4, convertPanelString:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget v6, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfActiveNotificationPanel:I

    if-ge v5, v6, :cond_1

    .line 467
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #convertPanelString:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 468
    .restart local v4       #convertPanelString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    if-eqz v1, :cond_0

    .line 471
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    :cond_0
    const-string v6, "NotificationPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Save] active_content : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 475
    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lcom/android/sec_settings/NotificationPanel;->mNumOfCandidateNotificationPanel:I

    if-ge v5, v6, :cond_3

    .line 476
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #convertPanelString:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 477
    .restart local v4       #convertPanelString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 479
    if-eqz v3, :cond_2

    .line 480
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    :cond_2
    const-string v6, "NotificationPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Save] cadidate_content : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 484
    :cond_3
    const-string v6, "NotificationPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Save] active_app_list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v6, "NotificationPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Save] candidate_app_list : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_active_app_list"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 488
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_candidate_app_list"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 489
    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/NotificationPanel;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/NotificationPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/sec_settings/NotificationPanel;->mIsOnDragging:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/sec_settings/NotificationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/sec_settings/NotificationPanel;->mEntCnt:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/sec_settings/NotificationPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/sec_settings/NotificationPanel;->mEntCnt:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/sec_settings/NotificationPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/sec_settings/NotificationPanel;->mIsOnDragging:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/sec_settings/NotificationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/sec_settings/NotificationPanel;->mOldDropItem:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/sec_settings/NotificationPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/sec_settings/NotificationPanel;->mOldDropItem:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/sec_settings/NotificationPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/NotificationPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/NotificationPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/sec_settings/NotificationPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/sec_settings/NotificationPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelTextView:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/NotificationPanel;)Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mDragShadowBuilder:Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/sec_settings/NotificationPanel;Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;)Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/sec_settings/NotificationPanel;->mDragShadowBuilder:Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/sec_settings/NotificationPanel;Landroid/view/View;Landroid/content/ClipData;Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p5}, Lcom/android/sec_settings/NotificationPanel;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/sec_settings/NotificationPanel;Landroid/view/View;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/NotificationPanel;->DropItemPos(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/sec_settings/NotificationPanel;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/NotificationPanel;->changeNotificationPanel(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/sec_settings/NotificationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/sec_settings/NotificationPanel;->SaveAppslist()V

    return-void
.end method

.method private changeNotificationPanel(Landroid/view/View;I)V
    .locals 12
    .parameter "iv"
    .parameter "usedType"

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0xa

    const/4 v9, 0x0

    .line 306
    const-string v6, "NotificationPanel"

    const-string v7, "changeNotificationPanel"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v4, ""

    .line 308
    .local v4, seletedNotificationText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 310
    .local v0, dropItemPosition:I
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/NotificationPanel;->DropItemPos(Landroid/view/View;I)I

    move-result v0

    .line 312
    iget v6, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    if-ge v6, v10, :cond_0

    .line 313
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #seletedNotificationText:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 317
    .restart local v4       #seletedNotificationText:Ljava/lang/String;
    :goto_0
    const-string v6, "NotificationPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mOnDragItem : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , dropItemPosition : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget v6, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    if-ne v0, v6, :cond_1

    .line 320
    const-string v6, "NotificationPanel"

    const-string v7, "dropItemPosition == mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_1
    return-void

    .line 315
    :cond_0
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    add-int/lit8 v7, v7, -0xa

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #seletedNotificationText:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4       #seletedNotificationText:Ljava/lang/String;
    goto :goto_0

    .line 322
    :cond_1
    iget v6, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    if-ge v6, v10, :cond_2

    if-ge v0, v10, :cond_2

    .line 323
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 325
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v6, v7, v0}, Lcom/android/sec_settings/NotificationPanel;->getActiveNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v5

    .line 326
    .local v5, value:[I
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    aget v7, v5, v9

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 363
    :goto_2
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->updatelist()V

    goto :goto_1

    .line 327
    .end local v5           #value:[I
    :cond_2
    iget v6, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    if-ge v6, v10, :cond_4

    if-lt v0, v10, :cond_4

    .line 328
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v6, v7, v0}, Lcom/android/sec_settings/NotificationPanel;->getCandidateNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v5

    .line 330
    .restart local v5       #value:[I
    aget v6, v5, v11

    if-ne v6, v11, :cond_3

    .line 331
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 332
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v7, "notification_panel_empty"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v7, "notification_panel_empty"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 334
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    aget v7, v5, v9

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 337
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_candidate_number_of_apps"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 339
    .local v2, mCandidateNotificationPanel:I
    const v6, 0x7f090e15

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/sec_settings/NotificationPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, message:Ljava/lang/String;
    invoke-static {p0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 342
    .end local v2           #mCandidateNotificationPanel:I
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #value:[I
    :cond_4
    iget v6, p0, Lcom/android/sec_settings/NotificationPanel;->mOnDragItem:I

    if-lt v6, v10, :cond_6

    if-ge v0, v10, :cond_6

    .line 343
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v6, v7, v0}, Lcom/android/sec_settings/NotificationPanel;->getActiveNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v5

    .line 345
    .restart local v5       #value:[I
    aget v6, v5, v11

    if-ne v6, v11, :cond_5

    .line 346
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 347
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    const-string v7, "notification_panel_empty"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    const-string v7, "notification_panel_empty"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 349
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    aget v7, v5, v9

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 352
    :cond_5
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_panel_active_number_of_apps"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 354
    .local v1, mActiveNotificationPanel:I
    const v6, 0x7f090e16

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/sec_settings/NotificationPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 355
    .restart local v3       #message:Ljava/lang/String;
    invoke-static {p0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 358
    .end local v1           #mActiveNotificationPanel:I
    .end local v3           #message:Ljava/lang/String;
    .end local v5           #value:[I
    :cond_6
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 360
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {p0, v6, v7, v0}, Lcom/android/sec_settings/NotificationPanel;->getCandidateNotificationItemPosition(Ljava/util/ArrayList;II)[I

    move-result-object v5

    .line 361
    .restart local v5       #value:[I
    iget-object v6, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    aget v7, v5, v9

    invoke-virtual {v6, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private getActiveNotificationItemPosition(Ljava/util/ArrayList;II)[I
    .locals 7
    .parameter
    .parameter "size"
    .parameter "dropItemPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .local p1, mActiveNotificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 367
    const/16 v0, 0xa

    .local v0, addItemPosition:I
    const/4 v4, 0x2

    new-array v3, v4, [I

    .local v3, realval:[I
    const/4 v2, 0x0

    .line 369
    .local v2, isFindEmptyPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 370
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "notification_panel_empty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    const/4 v2, 0x1

    .line 372
    move v0, v1

    .line 377
    :cond_0
    if-ge p3, v0, :cond_2

    .line 378
    aput p3, v3, v6

    .line 382
    :goto_1
    const/4 v4, 0x1

    aput v2, v3, v4

    .line 383
    return-object v3

    .line 369
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_2
    aput v0, v3, v6

    goto :goto_1
.end method

.method private getCandidateNotificationItemPosition(Ljava/util/ArrayList;II)[I
    .locals 7
    .parameter
    .parameter "size"
    .parameter "dropItemPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)[I"
        }
    .end annotation

    .prologue
    .local p1, mCandidateNotificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 387
    const/16 v0, 0xa

    .local v0, addItemPosition:I
    const/4 v4, 0x2

    new-array v3, v4, [I

    .local v3, realval:[I
    const/4 v2, 0x0

    .line 389
    .local v2, isFindEmptyPosition:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 390
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "notification_panel_empty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    const/4 v2, 0x1

    .line 392
    move v0, v1

    .line 397
    :cond_0
    add-int/lit8 v4, p3, -0xa

    if-ge v4, v0, :cond_2

    .line 398
    add-int/lit8 v4, p3, -0xa

    aput v4, v3, v6

    .line 402
    :goto_1
    const/4 v4, 0x1

    aput v2, v3, v4

    .line 403
    return-object v3

    .line 389
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_2
    aput v0, v3, v6

    goto :goto_1
.end method

.method private startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    const-string v1, "NotificationPanel"

    const-string v2, "Drag started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v15, 0x0

    .line 495
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 496
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 497
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 500
    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 503
    iget v1, v7, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v7, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    .line 504
    :cond_0
    const-string v1, "NotificationPanel"

    const-string v2, "Drag shadow dimensions must not be negative"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v1, 0x0

    .line 549
    :goto_0
    return v1

    .line 508
    :cond_1
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .line 510
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 511
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 512
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 514
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mWindow"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 515
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 516
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindow;

    .line 518
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mSession"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 519
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 520
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowSession;

    .line 522
    iget v4, v7, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    move/from16 v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v9

    .line 524
    if-eqz v9, :cond_2

    .line 525
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;->setSurface(Landroid/view/Surface;)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Lcom/android/sec_settings/lockscreenshortcut/IconDragShadowBuilder;->draw()V

    .line 528
    const-class v3, Landroid/view/View;

    const-string v4, "getViewRootImpl"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 529
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 530
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 533
    const-class v4, Landroid/view/ViewRootImpl;

    const-string v5, "setLocalDragState"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    invoke-virtual {v4, v5, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 534
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 535
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p4, v5, v10

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-virtual {v3, v7}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 540
    iget v3, v7, Landroid/graphics/Point;->x:I

    int-to-float v10, v3

    iget v3, v7, Landroid/graphics/Point;->y:I

    int-to-float v11, v3

    iget v3, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    iget v3, v8, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object v7, v1

    move-object v8, v2

    move-object/from16 v14, p2

    invoke-interface/range {v7 .. v14}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    .line 544
    :catch_0
    move-exception v1

    .line 545
    const-string v2, "NotificationPanel"

    const-string v3, "Unable to initiate drag"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    invoke-virtual {v6}, Landroid/view/Surface;->destroy()V

    :cond_2
    move v1, v15

    goto/16 :goto_0
.end method


# virtual methods
.method public MakeConvertPanelName()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-string v2, "notification_panel_wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Location"

    const-string v2, "notification_panel_gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-string v2, "notification_panel_sound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AutoRotate"

    const-string v2, "notification_panel_screen_rotation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-string v2, "notification_panel_bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MobileData"

    const-string v2, "notification_panel_mobile_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DormantMode"

    const-string v2, "notification_panel_blocking_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PowerSaving"

    const-string v2, "notification_panel_powersaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AllShareCast"

    const-string v2, "notification_panel_mobile_allshare_cast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MultiWindow"

    const-string v2, "notification_panel_multiwindows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "WiFiHotspot"

    const-string v2, "notification_panel_wifihotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SBeam"

    const-string v2, "notification_panel_sbeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Nfc"

    const-string v2, "notification_panel_nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DrivingMode"

    const-string v2, "notification_panel_driving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartStay"

    const-string v2, "notification_panel_smartstay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Sync"

    const-string v2, "notification_panel_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Empty"

    const-string v2, "notification_panel_empty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifi"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_gps"

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sound"

    const-string v2, "SilentMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_screen_rotation"

    const-string v2, "AutoRotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_bluetooth"

    const-string v2, "Bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_data"

    const-string v2, "MobileData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_blocking_mode"

    const-string v2, "DormantMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_powersaving"

    const-string v2, "PowerSaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_allshare_cast"

    const-string v2, "AllShareCast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_multiwindows"

    const-string v2, "MultiWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifihotspot"

    const-string v2, "WiFiHotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sbeam"

    const-string v2, "SBeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_nfc"

    const-string v2, "Nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_driving"

    const-string v2, "DrivingMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartstay"

    const-string v2, "SmartStay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sync"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/android/sec_settings/NotificationPanel;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_empty"

    const-string v2, "Empty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 296
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v1, 0x7f040093

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/NotificationPanel;->setContentView(I)V

    .line 112
    const v1, 0x7f0b0179

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/sec_settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    .line 113
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "notification_panel_brightness_adjustment"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 114
    .local v0, setcheck:Z
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/sec_settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v1, p0, Lcom/android/sec_settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/sec_settings/NotificationPanel;->mBrightnessListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->MakeConvertPanelName()V

    .line 119
    invoke-direct {p0}, Lcom/android/sec_settings/NotificationPanel;->LoadAppslist()V

    .line 120
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->updatelist()V

    .line 121
    return-void

    .end local v0           #setcheck:Z
    :cond_0
    move v0, v2

    .line 113
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 292
    return-void
.end method

.method public updatelist()V
    .locals 13

    .prologue
    .line 160
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/NotificationPanel;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 161
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    .line 162
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelItem:Ljava/util/ArrayList;

    .line 163
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mPositionBar:Ljava/util/ArrayList;

    .line 164
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelTextView:Ljava/util/ArrayList;

    .line 166
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 167
    const/4 v2, 0x0

    .local v2, line:I
    :goto_0
    const/4 v9, 0x4

    if-ge v2, v9, :cond_d

    .line 168
    if-nez v2, :cond_1

    .line 169
    const v9, 0x7f0b0153

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 170
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 185
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    const/4 v9, 0x5

    if-ge v0, v9, :cond_7

    .line 187
    const v9, 0x7f040094

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 188
    .local v7, positionBarLayout:Landroid/view/View;
    const v9, 0x7f0b017f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 190
    .local v6, positionBar:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    const v9, 0x7f040095

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 194
    .local v4, notificationIconLayout:Landroid/view/View;
    const v9, 0x7f0b0181

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 195
    .local v3, notificationIcon:Landroid/widget/ImageView;
    const v9, 0x7f0b0182

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 196
    .local v5, notificationText:Landroid/widget/TextView;
    const v9, 0x7f0b0182

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    .line 198
    if-nez v2, :cond_4

    .line 199
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "notification_panel_empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "drawable"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 201
    .local v8, tmpID:I
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "string"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 203
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    .line 227
    .end local v8           #tmpID:I
    :cond_0
    :goto_3
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 228
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mIconDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 229
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mTextDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 231
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelTextView:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 172
    .end local v0           #i:I
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #notificationText:Landroid/widget/TextView;
    .end local v6           #positionBar:Landroid/widget/ImageView;
    .end local v7           #positionBarLayout:Landroid/view/View;
    :cond_1
    const/4 v9, 0x1

    if-ne v2, v9, :cond_2

    .line 173
    const v9, 0x7f0b017b

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 174
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_1

    .line 176
    :cond_2
    const/4 v9, 0x2

    if-ne v2, v9, :cond_3

    .line 177
    const v9, 0x7f0b017d

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 178
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_1

    .line 181
    :cond_3
    const v9, 0x7f0b017e

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 182
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_1

    .line 205
    .restart local v0       #i:I
    .restart local v3       #notificationIcon:Landroid/widget/ImageView;
    .restart local v4       #notificationIconLayout:Landroid/view/View;
    .restart local v5       #notificationText:Landroid/widget/TextView;
    .restart local v6       #positionBar:Landroid/widget/ImageView;
    .restart local v7       #positionBarLayout:Landroid/view/View;
    :cond_4
    const/4 v9, 0x1

    if-ne v2, v9, :cond_5

    .line 206
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "notification_panel_empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x5

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "drawable"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 208
    .restart local v8       #tmpID:I
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x5

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "string"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 210
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 212
    .end local v8           #tmpID:I
    :cond_5
    const/4 v9, 0x2

    if-ne v2, v9, :cond_6

    .line 213
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "notification_panel_empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "drawable"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 215
    .restart local v8       #tmpID:I
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 216
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "string"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 217
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 220
    .end local v8           #tmpID:I
    :cond_6
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "notification_panel_empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x5

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "drawable"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 222
    .restart local v8       #tmpID:I
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 223
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, 0x5

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "string"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 224
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 167
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #notificationText:Landroid/widget/TextView;
    .end local v6           #positionBar:Landroid/widget/ImageView;
    .end local v7           #positionBarLayout:Landroid/view/View;
    .end local v8           #tmpID:I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 238
    .end local v0           #i:I
    .end local v2           #line:I
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #line:I
    :goto_4
    const/4 v9, 0x2

    if-ge v2, v9, :cond_d

    .line 239
    if-nez v2, :cond_a

    .line 240
    const v9, 0x7f0b0153

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 241
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 248
    :goto_5
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_6
    const/16 v9, 0xa

    if-ge v0, v9, :cond_c

    .line 250
    const v9, 0x7f040094

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 251
    .restart local v7       #positionBarLayout:Landroid/view/View;
    const v9, 0x7f0b017f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 253
    .restart local v6       #positionBar:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    const v9, 0x7f040095

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 257
    .restart local v4       #notificationIconLayout:Landroid/view/View;
    const v9, 0x7f0b0181

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 258
    .restart local v3       #notificationIcon:Landroid/widget/ImageView;
    const v9, 0x7f0b0182

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 259
    .restart local v5       #notificationText:Landroid/widget/TextView;
    const v9, 0x7f0b0182

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    .line 261
    if-nez v2, :cond_b

    .line 262
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "notification_panel_empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 263
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "drawable"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 264
    .restart local v8       #tmpID:I
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 265
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "string"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 266
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    .line 276
    .end local v8           #tmpID:I
    :cond_9
    :goto_7
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 277
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mIconDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 278
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mTextDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 280
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanel:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelItem:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mNotificationPanelTextView:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 244
    .end local v0           #i:I
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #notificationText:Landroid/widget/TextView;
    .end local v6           #positionBar:Landroid/widget/ImageView;
    .end local v7           #positionBarLayout:Landroid/view/View;
    :cond_a
    const v9, 0x7f0b017b

    invoke-virtual {p0, v9}, Lcom/android/sec_settings/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    .line 245
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_5

    .line 269
    .restart local v0       #i:I
    .restart local v3       #notificationIcon:Landroid/widget/ImageView;
    .restart local v4       #notificationIconLayout:Landroid/view/View;
    .restart local v5       #notificationText:Landroid/widget/TextView;
    .restart local v6       #positionBar:Landroid/widget/ImageView;
    .restart local v7       #positionBarLayout:Landroid/view/View;
    :cond_b
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "notification_panel_empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 270
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "drawable"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 271
    .restart local v8       #tmpID:I
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "string"

    invoke-virtual {p0}, Lcom/android/sec_settings/NotificationPanel;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 273
    iget-object v9, p0, Lcom/android/sec_settings/NotificationPanel;->NotipicationPanelName:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7

    .line 238
    .end local v3           #notificationIcon:Landroid/widget/ImageView;
    .end local v4           #notificationIconLayout:Landroid/view/View;
    .end local v5           #notificationText:Landroid/widget/TextView;
    .end local v6           #positionBar:Landroid/widget/ImageView;
    .end local v7           #positionBarLayout:Landroid/view/View;
    .end local v8           #tmpID:I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 287
    .end local v0           #i:I
    :cond_d
    return-void
.end method
