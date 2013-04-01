.class public Lcom/sec/android/app/fm/data/RecordedFileAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "RecordedFileAdapter.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCheckedIdArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mIsLocalFilesPresent:Z

.field public mIsOnlineFilesPresent:Z

.field private mItemDateColorStateList:Landroid/content/res/ColorStateList;

.field private mItemDurationStateList:Landroid/content/res/ColorStateList;

.field private mItemPlayIconStateList:Landroid/content/res/ColorStateList;

.field private mItemTitleColorStateList:Landroid/content/res/ColorStateList;

.field private mListActivity:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

.field private mListType:I

.field public mSelectedItem:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .parameter "context"
    .parameter "layout"
    .parameter "listType"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 58
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 41
    const-string v0, "RecordedFileAdapter"

    iput-object v0, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListType:I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mContext:Landroid/content/Context;

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mSelectedItem:J

    .line 53
    iput-boolean v6, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mIsOnlineFilesPresent:Z

    .line 54
    iput-boolean v6, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mIsLocalFilesPresent:Z

    .line 60
    iput p3, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListType:I

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemTitleColorStateList:Landroid/content/res/ColorStateList;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemDateColorStateList:Landroid/content/res/ColorStateList;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemDurationStateList:Landroid/content/res/ColorStateList;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemPlayIconStateList:Landroid/content/res/ColorStateList;

    .line 67
    return-void
.end method

.method private getDateFormatByFormatSetting(J)Ljava/lang/String;
    .locals 5
    .parameter "date"

    .prologue
    .line 179
    const-string v0, ""

    .line 181
    .local v0, dateString:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v1, v0

    .line 187
    .end local v0           #dateString:Ljava/lang/String;
    .local v1, dateString:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 184
    .end local v1           #dateString:Ljava/lang/String;
    .restart local v0       #dateString:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 185
    .local v2, shortDateFormat:Ljava/text/DateFormat;
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 187
    .end local v0           #dateString:Ljava/lang/String;
    .restart local v1       #dateString:Ljava/lang/String;
    goto :goto_0
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 12
    .parameter "timeMs"

    .prologue
    .line 166
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 167
    .local v6, totalSeconds:J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 168
    .local v4, seconds:J
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    .line 169
    .local v2, minutes:J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 171
    .local v0, hours:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 172
    const-string v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 174
    :goto_0
    return-object v8

    :cond_0
    const-string v8, "%02d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v18, p2

    .line 71
    check-cast v18, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListActivity:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    .line 72
    :cond_0
    if-nez p3, :cond_2

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "bindview : cursor is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    const-wide/16 v9, 0x0

    .line 78
    .local v9, duration:J
    const-wide/16 v6, 0x0

    .line 79
    .local v6, date:J
    const-wide/16 v13, -0x1

    .line 83
    .local v13, id:J
    :try_start_0
    const-string v18, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 84
    const-string v18, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 85
    .local v16, title:Ljava/lang/String;
    const-string v18, "date_modified"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 86
    const-string v18, "_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 87
    const-string v18, "mime_type"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 94
    .local v15, mimeType:Ljava/lang/String;
    const v18, 0x7f070035

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 95
    .local v17, titleText:Landroid/widget/TextView;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v18, 0x7f070037

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 98
    .local v8, dateText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->getDateFormatByFormatSetting(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v18, 0x7f070038

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 101
    .local v11, durationText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->stringForTime(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v18, 0x7f07003b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 105
    .local v4, _playIcon:Landroid/widget/TextView;
    const v18, 0x7f070039

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 106
    .local v5, checkBox:Landroid/widget/CheckBox;
    if-eqz v4, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemPlayIconStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 109
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemDateColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListActivity:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getPlayer()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListActivity:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getPlayer()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPlayingId()J

    move-result-wide v18

    cmp-long v18, v18, v13

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListActivity:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getPlayer()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListActivity:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getPlayer()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPaused()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 116
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemTitleColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 120
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSelected(Z)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListActivity:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getPlayer()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->isPlaying()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 122
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x7f020120

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a00d2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemTitleColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemDateColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemDateColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 149
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 89
    .end local v4           #_playIcon:Landroid/widget/TextView;
    .end local v5           #checkBox:Landroid/widget/CheckBox;
    .end local v8           #dateText:Landroid/widget/TextView;
    .end local v11           #durationText:Landroid/widget/TextView;
    .end local v15           #mimeType:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #titleText:Landroid/widget/TextView;
    :catch_0
    move-exception v12

    .line 90
    .local v12, e:Landroid/database/CursorIndexOutOfBoundsException;
    invoke-virtual {v12}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 127
    .end local v12           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v4       #_playIcon:Landroid/widget/TextView;
    .restart local v5       #checkBox:Landroid/widget/CheckBox;
    .restart local v8       #dateText:Landroid/widget/TextView;
    .restart local v11       #durationText:Landroid/widget/TextView;
    .restart local v15       #mimeType:Ljava/lang/String;
    .restart local v16       #title:Ljava/lang/String;
    .restart local v17       #titleText:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListActivity:Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/RecordedFileListPlayerActivity;->getPlayer()Lcom/sec/android/app/fm/listplayer/FMListPlayerService;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/fm/listplayer/FMListPlayerService;->getCurrentPosition()I

    move-result v18

    if-nez v18, :cond_6

    .line 128
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 130
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x7f02011f

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a008c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 136
    :cond_7
    if-eqz v4, :cond_8

    .line 137
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080002

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemDateColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 144
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_1

    .line 150
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 151
    :cond_a
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 152
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080002

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemDateColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemDateColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 157
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 158
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mCheckedIdArrayList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 160
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mListType:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mItemDateColorStateList:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_0
.end method

.method public setCheckedIdArrayList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, checkedIdArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sec/android/app/fm/data/RecordedFileAdapter;->mCheckedIdArrayList:Ljava/util/ArrayList;

    .line 191
    return-void
.end method
