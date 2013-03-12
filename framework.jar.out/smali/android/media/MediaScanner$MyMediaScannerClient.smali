.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private isDrmConverted:Z

.field private isDrmFlag:Z

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCityID:J

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDrmPath:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mRecordingType:I

.field private mResolution:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mVideoLatitude:F

.field private mVideoLongitude:F

.field private mWeatherID:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 545
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 566
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmFlag:Z

    .line 575
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    .line 576
    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    .line 577
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    .line 578
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 579
    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 545
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "data"
    .parameter "values"

    .prologue
    .line 1028
    if-nez p1, :cond_1

    const-string v1, ""

    .line 1029
    .local v1, s:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1030
    .local v0, idx:I
    if-ltz v0, :cond_0

    .line 1031
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1033
    :cond_0
    const-string v2, "_display_name"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    return-void

    .line 1028
    .end local v0           #idx:I
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "input"
    .parameter "expected"

    .prologue
    .line 848
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, output:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    const/4 v1, 0x1

    .line 853
    :goto_0
    return v1

    .line 852
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1350
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1351
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1352
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;
    .locals 54
    .parameter "entry"
    .parameter "ringtones"
    .parameter "dcfRingtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1042
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1043
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 1046
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v51

    .line 1047
    .local v51, values:Landroid/content/ContentValues;
    const-string/jumbo v6, "title"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1048
    .local v50, title:Ljava/lang/String;
    if-eqz v50, :cond_2

    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1049
    :cond_2
    const-string v6, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1050
    const-string/jumbo v6, "title"

    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_3
    const-string v6, "album"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1053
    .local v15, album:Ljava/lang/String;
    const-string v6, "<unknown>"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1054
    const-string v6, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1056
    const/16 v6, 0x2f

    invoke-virtual {v15, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v35

    .line 1057
    .local v35, lastSlash:I
    if-ltz v35, :cond_5

    .line 1058
    const/16 v41, 0x0

    .line 1060
    .local v41, previousSlash:I
    :goto_0
    const/16 v6, 0x2f

    add-int/lit8 v7, v41, 0x1

    invoke-virtual {v15, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v32

    .line 1061
    .local v32, idx:I
    if-ltz v32, :cond_4

    move/from16 v0, v32

    move/from16 v1, v35

    if-lt v0, v1, :cond_14

    .line 1066
    :cond_4
    if-eqz v41, :cond_5

    .line 1067
    add-int/lit8 v6, v41, 0x1

    move/from16 v0, v35

    invoke-virtual {v15, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1068
    const-string v6, "album"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    .end local v32           #idx:I
    .end local v35           #lastSlash:I
    .end local v41           #previousSlash:I
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v45, v0

    .line 1073
    .local v45, rowId:J
    const-wide/16 v16, 0x0

    .line 1074
    .local v16, beforeExifExtractingTime:J
    const-wide/16 v24, 0x0

    .line 1076
    .local v24, exifExtractingTime:J
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v6

    if-eqz v6, :cond_16

    const-wide/16 v6, 0x0

    cmp-long v6, v45, v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v6

    if-eqz v6, :cond_16

    .line 1081
    :cond_6
    const-string v7, "is_ringtone"

    if-nez p2, :cond_7

    if-eqz p3, :cond_15

    :cond_7
    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v51

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1082
    const-string v6, "is_notification"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1083
    const-string v6, "is_alarm"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1084
    const-string v6, "is_music"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1085
    const-string v6, "is_podcast"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1169
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v47

    .line 1170
    .local v47, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v33

    .line 1171
    .local v33, inserter:Landroid/media/MediaInserter;
    const-wide/16 v18, 0x0

    .line 1173
    .local v18, bulkInserterTime:J
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v6, :cond_9

    .line 1174
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1175
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v47

    .line 1182
    :cond_9
    :goto_3
    const/16 v42, 0x0

    .line 1183
    .local v42, result:Landroid/net/Uri;
    const/16 v38, 0x0

    .line 1184
    .local v38, needToSetSettings:Z
    const-wide/16 v6, 0x0

    cmp-long v6, v45, v6

    if-nez v6, :cond_27

    .line 1185
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v6

    if-eqz v6, :cond_a

    .line 1186
    const-string/jumbo v6, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v7}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1188
    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v47

    if-ne v0, v6, :cond_c

    .line 1189
    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    move/from16 v28, v0

    .line 1190
    .local v28, format:I
    if-nez v28, :cond_b

    .line 1191
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    .line 1193
    :cond_b
    const-string v6, "format"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1198
    .end local v28           #format:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1199
    if-eqz p4, :cond_21

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 1200
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1202
    :cond_d
    const/16 v38, 0x1

    .line 1223
    :cond_e
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1224
    if-eqz v33, :cond_f

    if-eqz v38, :cond_25

    .line 1225
    :cond_f
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v6

    move-object/from16 v0, v47

    move-object/from16 v1, v51

    invoke-interface {v6, v0, v1}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v42

    .line 1231
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$3008(Landroid/media/MediaScanner;)J

    .line 1232
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v18

    invoke-static {v6, v7, v8}, Landroid/media/MediaScanner;->access$3114(Landroid/media/MediaScanner;J)J

    .line 1233
    if-eqz v42, :cond_10

    .line 1234
    invoke-static/range {v42 .. v42}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v45

    .line 1235
    move-wide/from16 v0, v45

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1274
    :cond_10
    :goto_6
    if-eqz v38, :cond_31

    .line 1275
    if-eqz p4, :cond_32

    .line 1276
    const-string/jumbo v6, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v45

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1278
    const-string v6, "CTC"

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "CHM"

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 1280
    :cond_11
    const-string v10, "com.android.settings"

    .line 1281
    .local v10, AUTHORITY:Ljava/lang/String;
    const-string/jumbo v12, "profile"

    .line 1282
    .local v12, PROFILE_TABLE:Ljava/lang/String;
    const-string v6, "content://com.android.settings/profile"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1284
    .local v5, PROFILE_CONTENT_URI:Landroid/net/Uri;
    const/16 v31, 0x0

    .local v31, i:I
    :goto_7
    const/4 v6, 0x5

    move/from16 v0, v31

    if-ge v0, v6, :cond_30

    .line 1285
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1286
    .local v4, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "profile_notification_tone"

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v31, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1287
    .local v20, cursor:Landroid/database/Cursor;
    if-eqz v20, :cond_12

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1288
    const-string/jumbo v6, "profile_notification_tone"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1290
    .local v11, NotiRingtone:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1291
    new-instance v44, Landroid/content/ContentValues;

    invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V

    .line 1292
    .local v44, ringtoneValues:Landroid/content/ContentValues;
    const-string/jumbo v6, "profile_notification_tone"

    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    add-int/lit8 v6, v31, 0x1

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 1294
    .local v14, _uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v6, v14, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1297
    .end local v11           #NotiRingtone:Ljava/lang/String;
    .end local v14           #_uri:Landroid/net/Uri;
    .end local v44           #ringtoneValues:Landroid/content/ContentValues;
    :cond_12
    if-eqz v20, :cond_13

    .line 1298
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1284
    :cond_13
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_7

    .line 1064
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #PROFILE_CONTENT_URI:Landroid/net/Uri;
    .end local v10           #AUTHORITY:Ljava/lang/String;
    .end local v12           #PROFILE_TABLE:Ljava/lang/String;
    .end local v16           #beforeExifExtractingTime:J
    .end local v18           #bulkInserterTime:J
    .end local v20           #cursor:Landroid/database/Cursor;
    .end local v24           #exifExtractingTime:J
    .end local v31           #i:I
    .end local v33           #inserter:Landroid/media/MediaInserter;
    .end local v38           #needToSetSettings:Z
    .end local v42           #result:Landroid/net/Uri;
    .end local v45           #rowId:J
    .end local v47           #tableUri:Landroid/net/Uri;
    .restart local v32       #idx:I
    .restart local v35       #lastSlash:I
    .restart local v41       #previousSlash:I
    :cond_14
    move/from16 v41, v32

    .line 1065
    goto/16 :goto_0

    .line 1081
    .end local v32           #idx:I
    .end local v35           #lastSlash:I
    .end local v41           #previousSlash:I
    .restart local v16       #beforeExifExtractingTime:J
    .restart local v24       #exifExtractingTime:J
    .restart local v45       #rowId:J
    :cond_15
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1086
    :cond_16
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v7, 0x20

    if-ne v6, v7, :cond_8

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v6, :cond_8

    .line 1087
    const/16 v53, -0x1

    .line 1088
    .local v53, width:I
    const/16 v30, -0x1

    .line 1089
    .local v30, height:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1090
    const/16 v22, 0x0

    .line 1092
    .local v22, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v23, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v22           #exif:Landroid/media/ExifInterface;
    .local v23, exif:Landroid/media/ExifInterface;
    move-object/from16 v22, v23

    .line 1096
    .end local v23           #exif:Landroid/media/ExifInterface;
    .restart local v22       #exif:Landroid/media/ExifInterface;
    :goto_8
    if-eqz v22, :cond_19

    .line 1097
    const/4 v6, 0x2

    new-array v0, v6, [F

    move-object/from16 v36, v0

    .line 1098
    .local v36, latlng:[F
    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1099
    const-string v6, "latitude"

    const/4 v7, 0x0

    aget v7, v36, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1100
    const-string v6, "longitude"

    const/4 v7, 0x1

    aget v7, v36, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1103
    :cond_17
    invoke-virtual/range {v22 .. v22}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v48

    .line 1104
    .local v48, time:J
    const-wide/16 v6, -0x1

    cmp-long v6, v48, v6

    if-eqz v6, :cond_1c

    .line 1105
    const-string v6, "datetaken"

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1118
    :cond_18
    :goto_9
    const-string v6, "ImageWidth"

    const/4 v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v53

    .line 1119
    const-string v6, "ImageLength"

    const/4 v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v30

    .line 1121
    const-string v6, "Orientation"

    const/4 v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v39

    .line 1123
    .local v39, orientation:I
    const/4 v6, -0x1

    move/from16 v0, v39

    if-eq v0, v6, :cond_19

    .line 1126
    packed-switch v39, :pswitch_data_0

    .line 1137
    :pswitch_0
    const/16 v21, 0x0

    .line 1140
    .local v21, degree:I
    :goto_a
    const-string/jumbo v6, "orientation"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1143
    .end local v21           #degree:I
    .end local v36           #latlng:[F
    .end local v39           #orientation:I
    .end local v48           #time:J
    :cond_19
    const/4 v6, -0x1

    move/from16 v0, v53

    if-eq v0, v6, :cond_1a

    const/4 v6, -0x1

    move/from16 v0, v30

    if-ne v0, v6, :cond_1d

    .line 1144
    :cond_1a
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 1150
    :goto_b
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v6, :cond_1b

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v6, :cond_1b

    .line 1151
    const-string/jumbo v6, "width"

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1152
    const-string v6, "height"

    move-object/from16 v0, p0

    iget v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1154
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v24, v6, v16

    .line 1155
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v24

    invoke-static {v6, v0, v1}, Landroid/media/MediaScanner;->access$1714(Landroid/media/MediaScanner;J)J

    .line 1156
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v34

    .line 1157
    .local v34, lastDot:I
    if-lez v34, :cond_8

    const-wide/16 v6, 0x0

    cmp-long v6, v16, v6

    if-eqz v6, :cond_8

    const-wide/16 v6, 0x0

    cmp-long v6, v24, v6

    if-eqz v6, :cond_8

    .line 1158
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    add-int/lit8 v7, v34, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v26

    .line 1159
    .local v26, extention:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/media/MediaScanner$FileParsingTime;

    .line 1160
    .local v40, parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v40, :cond_1e

    .line 1161
    move-object/from16 v0, v40

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1111
    .end local v26           #extention:Ljava/lang/String;
    .end local v34           #lastDot:I
    .end local v40           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    .restart local v36       #latlng:[F
    .restart local v48       #time:J
    :cond_1c
    invoke-virtual/range {v22 .. v22}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v48

    .line 1112
    const-wide/16 v6, -0x1

    cmp-long v6, v48, v6

    if-eqz v6, :cond_18

    .line 1113
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v6, v6, v48

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-ltz v6, :cond_18

    .line 1114
    const-string v6, "datetaken"

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_9

    .line 1128
    .restart local v39       #orientation:I
    :pswitch_1
    const/16 v21, 0x5a

    .line 1129
    .restart local v21       #degree:I
    goto/16 :goto_a

    .line 1131
    .end local v21           #degree:I
    :pswitch_2
    const/16 v21, 0xb4

    .line 1132
    .restart local v21       #degree:I
    goto/16 :goto_a

    .line 1134
    .end local v21           #degree:I
    :pswitch_3
    const/16 v21, 0x10e

    .line 1135
    .restart local v21       #degree:I
    goto/16 :goto_a

    .line 1146
    .end local v21           #degree:I
    .end local v36           #latlng:[F
    .end local v39           #orientation:I
    .end local v48           #time:J
    :cond_1d
    move/from16 v0, v53

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 1147
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_b

    .line 1164
    .restart local v26       #extention:Ljava/lang/String;
    .restart local v34       #lastDot:I
    .restart local v40       #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Landroid/media/MediaScanner$FileParsingTime;

    move-object/from16 v0, v26

    move-wide/from16 v1, v24

    invoke-direct {v7, v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1176
    .end local v22           #exif:Landroid/media/ExifInterface;
    .end local v26           #extention:Ljava/lang/String;
    .end local v30           #height:I
    .end local v34           #lastDot:I
    .end local v40           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    .end local v53           #width:I
    .restart local v18       #bulkInserterTime:J
    .restart local v33       #inserter:Landroid/media/MediaInserter;
    .restart local v47       #tableUri:Landroid/net/Uri;
    :cond_1f
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1177
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v47

    goto/16 :goto_3

    .line 1178
    :cond_20
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1179
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v47

    goto/16 :goto_3

    .line 1204
    .restart local v38       #needToSetSettings:Z
    .restart local v42       #result:Landroid/net/Uri;
    :cond_21
    if-eqz p2, :cond_23

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 1205
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_22

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1207
    :cond_22
    const/16 v38, 0x1

    goto/16 :goto_4

    .line 1209
    :cond_23
    if-eqz p5, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1210
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1212
    :cond_24
    const/16 v38, 0x1

    goto/16 :goto_4

    .line 1226
    :cond_25
    move-object/from16 v0, p1

    iget v6, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v7, 0x3001

    if-ne v6, v7, :cond_26

    .line 1227
    move-object/from16 v0, v33

    move-object/from16 v1, v47

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_5

    .line 1229
    :cond_26
    move-object/from16 v0, v33

    move-object/from16 v1, v47

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_5

    .line 1239
    :cond_27
    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v42

    .line 1242
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v6

    if-nez v6, :cond_28

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-nez v6, :cond_28

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 1243
    :cond_28
    const-string v6, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1244
    .local v13, _datafield:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v13, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1248
    .end local v13           #_datafield:Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1249
    const-string/jumbo v6, "mini_thumb_magic"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1254
    :cond_2a
    const-string v6, "_data"

    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1256
    const/16 v37, 0x0

    .line 1257
    .local v37, mediaType:I
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 1258
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v27

    .line 1259
    .local v27, fileType:I
    invoke-static/range {v27 .. v27}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1260
    const/16 v37, 0x2

    .line 1268
    :cond_2b
    :goto_c
    const-string/jumbo v6, "media_type"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1270
    .end local v27           #fileType:I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v6}, Landroid/media/MediaScanner;->access$3208(Landroid/media/MediaScanner;)J

    .line 1271
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v51

    invoke-interface {v6, v0, v1, v7, v8}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1261
    .restart local v27       #fileType:I
    :cond_2d
    invoke-static/range {v27 .. v27}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1262
    const/16 v37, 0x3

    goto :goto_c

    .line 1263
    :cond_2e
    invoke-static/range {v27 .. v27}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 1264
    const/16 v37, 0x1

    goto :goto_c

    .line 1265
    :cond_2f
    invoke-static/range {v27 .. v27}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1266
    const/16 v37, 0x4

    goto :goto_c

    .line 1302
    .end local v27           #fileType:I
    .end local v37           #mediaType:I
    :cond_30
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v7, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v6, v7}, Landroid/media/MediaScanner;->access$2302(Landroid/media/MediaScanner;Z)Z

    .line 1346
    :cond_31
    :goto_d
    return-object v42

    .line 1303
    :cond_32
    if-eqz p2, :cond_3a

    .line 1304
    const-string/jumbo v6, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v45

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1306
    const-string v6, "CTC"

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    const-string v6, "CHM"

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1308
    :cond_33
    const-string v10, "com.android.settings"

    .line 1309
    .restart local v10       #AUTHORITY:Ljava/lang/String;
    const-string/jumbo v12, "profile"

    .line 1310
    .restart local v12       #PROFILE_TABLE:Ljava/lang/String;
    const-string v6, "content://com.android.settings/profile"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1312
    .restart local v5       #PROFILE_CONTENT_URI:Landroid/net/Uri;
    const/16 v31, 0x0

    .restart local v31       #i:I
    :goto_e
    const/4 v6, 0x5

    move/from16 v0, v31

    if-ge v0, v6, :cond_39

    .line 1313
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1314
    .restart local v4       #cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v31, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1315
    .restart local v20       #cursor:Landroid/database/Cursor;
    if-eqz v20, :cond_37

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 1316
    const-string/jumbo v6, "profile_ringtone"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 1317
    .local v43, ringtone:Ljava/lang/String;
    const-string/jumbo v6, "profile_gsm_ringtone"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1318
    .local v29, gsmRingtone:Ljava/lang/String;
    const-string/jumbo v6, "profile_video_ringtone"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 1319
    .local v52, videoRingtone:Ljava/lang/String;
    new-instance v44, Landroid/content/ContentValues;

    invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V

    .line 1320
    .restart local v44       #ringtoneValues:Landroid/content/ContentValues;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 1321
    const-string/jumbo v6, "profile_ringtone"

    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :cond_34
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1324
    const-string/jumbo v6, "profile_gsm_ringtone"

    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :cond_35
    invoke-static/range {v52 .. v52}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 1327
    const-string/jumbo v6, "profile_video_ringtone"

    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    :cond_36
    invoke-virtual/range {v44 .. v44}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-eqz v6, :cond_37

    .line 1330
    add-int/lit8 v6, v31, 0x1

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 1331
    .restart local v14       #_uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v6, v14, v0, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1334
    .end local v14           #_uri:Landroid/net/Uri;
    .end local v29           #gsmRingtone:Ljava/lang/String;
    .end local v43           #ringtone:Ljava/lang/String;
    .end local v44           #ringtoneValues:Landroid/content/ContentValues;
    .end local v52           #videoRingtone:Ljava/lang/String;
    :cond_37
    if-eqz v20, :cond_38

    .line 1335
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1312
    :cond_38
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_e

    .line 1339
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #PROFILE_CONTENT_URI:Landroid/net/Uri;
    .end local v10           #AUTHORITY:Ljava/lang/String;
    .end local v12           #PROFILE_TABLE:Ljava/lang/String;
    .end local v20           #cursor:Landroid/database/Cursor;
    .end local v31           #i:I
    :cond_39
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v7, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v6, v7}, Landroid/media/MediaScanner;->access$2502(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_d

    .line 1340
    :cond_3a
    if-eqz p5, :cond_31

    .line 1341
    const-string v6, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-wide/from16 v2, v45

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v7, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v6, v7}, Landroid/media/MediaScanner;->access$2702(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_d

    .line 1093
    .end local v18           #bulkInserterTime:J
    .end local v33           #inserter:Landroid/media/MediaInserter;
    .end local v38           #needToSetSettings:Z
    .end local v42           #result:Landroid/net/Uri;
    .end local v47           #tableUri:Landroid/net/Uri;
    .restart local v22       #exif:Landroid/media/ExifInterface;
    .restart local v30       #height:I
    .restart local v53       #width:I
    :catch_0
    move-exception v6

    goto/16 :goto_8

    .line 1126
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 17
    .parameter "path"

    .prologue
    .line 1369
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v13}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1370
    const/4 v10, 0x0

    .line 1483
    :cond_0
    :goto_0
    return v10

    .line 1373
    :cond_1
    const/4 v10, 0x0

    .line 1377
    .local v10, resultFileType:I
    const/4 v13, 0x3

    new-array v8, v13, [I

    .line 1378
    .local v8, mOutPermissions:[I
    const-string v13, "data/system/databases/drmdatabase.db"

    invoke-static {v13, v8}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 1379
    const-string v13, "MediaScanner"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getFileTypeFromDrm drmdatabase.db :  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const-string v13, "data/system/databases/drmdatabase.db-journal"

    invoke-static {v13, v8}, Landroid/os/FileUtils;->getPermissions(Ljava/lang/String;[I)I

    .line 1382
    const-string v13, "MediaScanner"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getFileTypeFromDrm drmdatabase.db-journal  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget v15, v8, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const-string v13, ".dm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 1386
    .local v7, isDM:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    if-nez v13, :cond_2

    .line 1387
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v14, Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v15}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13, v14}, Landroid/media/MediaScanner;->access$3402(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1388
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    if-nez v13, :cond_2

    .line 1389
    const-string v13, "MediaScanner"

    const-string v14, "getFileTypeFromDrm DrmManagerClient is NULL"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/4 v10, -0x1

    goto :goto_0

    .line 1394
    :cond_2
    if-eqz v7, :cond_5

    .line 1396
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1397
    .local v1, downloadedDrmFileSize:Ljava/io/File;
    const-string v13, "MediaScanner"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getFileTypeFromDrm : drm file size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    new-instance v3, Landroid/drm/DrmInfoRequest;

    const/4 v13, 0x7

    const-string v14, "application/vnd.oma.drm.content"

    invoke-direct {v3, v13, v14}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1402
    .local v3, drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    const-string v13, "drm_path"

    move-object/from16 v0, p1

    invoke-virtual {v3, v13, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1403
    const-string/jumbo v13, "status"

    const-string v14, "fail"

    invoke-virtual {v3, v13, v14}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 1407
    .local v2, drmInfo:Landroid/drm/DrmInfo;
    if-eqz v2, :cond_3

    const-string/jumbo v13, "status"

    invoke-virtual {v2, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    .line 1408
    :cond_3
    const-string v13, "MediaScanner"

    const-string v14, "::getDrmFileType() DrmInfoRequest.STATUS have NoV"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 1411
    :cond_4
    const-string/jumbo v13, "status"

    invoke-virtual {v2, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1415
    .local v11, status_req1:Ljava/lang/String;
    const-string/jumbo v13, "success"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1424
    const-string v13, "drm_path"

    invoke-virtual {v2, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1425
    .local v9, pathname_dest:Ljava/lang/Object;
    if-eqz v9, :cond_7

    .line 1428
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v6, file2:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1430
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1431
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 1432
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 1433
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmFlag:Z

    .line 1442
    .end local v1           #downloadedDrmFileSize:Ljava/io/File;
    .end local v2           #drmInfo:Landroid/drm/DrmInfo;
    .end local v3           #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .end local v6           #file2:Ljava/io/File;
    .end local v9           #pathname_dest:Ljava/lang/Object;
    .end local v11           #status_req1:Ljava/lang/String;
    :cond_5
    :goto_1
    new-instance v4, Landroid/drm/DrmInfoRequest;

    const/16 v13, 0x8

    const-string v14, "application/vnd.oma.drm.content"

    invoke-direct {v4, v13, v14}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1443
    .local v4, drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    const-string v13, "drm_path"

    move-object/from16 v0, p1

    invoke-virtual {v4, v13, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v2

    .line 1445
    .restart local v2       #drmInfo:Landroid/drm/DrmInfo;
    const-string/jumbo v13, "status"

    invoke-virtual {v2, v13}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1447
    .local v12, status_req2:Ljava/lang/String;
    const-string/jumbo v13, "success"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1461
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1462
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v13}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1463
    .local v5, drmMimetype:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1464
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1465
    invoke-static {v5}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_0

    .line 1420
    .end local v4           #drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    .end local v5           #drmMimetype:Ljava/lang/String;
    .end local v12           #status_req2:Ljava/lang/String;
    .restart local v1       #downloadedDrmFileSize:Ljava/io/File;
    .restart local v3       #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .restart local v11       #status_req1:Ljava/lang/String;
    :cond_6
    const-string v13, "MediaScanner"

    const-string v14, "Mediascanner::getFileTypeFromDrm :: acquireDrmInfo Fail"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 1438
    .restart local v9       #pathname_dest:Ljava/lang/Object;
    :cond_7
    const-string v13, "MediaScanner"

    const-string v14, "Mediascanner::getFileTypeFromDrm :: acquireDrmInfo_convert no file path"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1456
    .end local v1           #downloadedDrmFileSize:Ljava/io/File;
    .end local v3           #drmInfoRequest_convert:Landroid/drm/DrmInfoRequest;
    .end local v9           #pathname_dest:Ljava/lang/Object;
    .end local v11           #status_req1:Ljava/lang/String;
    .restart local v4       #drmInfoRequest_register:Landroid/drm/DrmInfoRequest;
    .restart local v12       #status_req2:Ljava/lang/String;
    :cond_8
    const-string v13, "MediaScanner"

    const-string v14, "Mediascanner::getFileTypeFromDrm ::acquireDrmInfo_register Fail"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 763
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 764
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 777
    .end local p3
    :goto_0
    return p3

    .line 766
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 768
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 770
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 771
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 772
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 773
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 774
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 777
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 929
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 930
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 932
    const-string v1, ".dcf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 933
    .local v0, isDCF:Z
    if-eqz v0, :cond_0

    .line 934
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    .line 942
    :goto_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 943
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 944
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 948
    .end local v0           #isDCF:Z
    :goto_1
    return-void

    .line 937
    .restart local v0       #isDCF:Z
    :cond_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->isPreview:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    .end local v0           #isDCF:Z
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 1358
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1366
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 857
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 858
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 859
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 860
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 861
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 862
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 863
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 864
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 865
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 866
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 867
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 868
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 869
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 870
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 871
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 969
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 971
    .local v0, map:Landroid/content/ContentValues;
    const-string v3, "_data"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string/jumbo v3, "title"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v3, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 974
    const-string v3, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 975
    const-string/jumbo v3, "mime_type"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v3, "is_drm"

    iget-boolean v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 978
    const/4 v1, 0x0

    .line 979
    .local v1, resolution:Ljava/lang/String;
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v3, :cond_0

    .line 980
    const-string/jumbo v3, "width"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    const-string v3, "height"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 985
    :cond_0
    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v3, :cond_3

    .line 986
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 987
    const-string v4, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v4, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v3, "duration"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 992
    if-eqz v1, :cond_1

    .line 993
    const-string/jumbo v3, "resolution"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :cond_1
    const-string v2, "0x0"

    .line 997
    .local v2, sUnknownResolution:Ljava/lang/String;
    const-string/jumbo v3, "resolution"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    .end local v2           #sUnknownResolution:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string/jumbo v3, "weather_ID"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 999
    const-string v3, "city_ID"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1000
    const-string v3, "latitude"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1001
    const-string v3, "longitude"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1024
    :cond_3
    :goto_2
    return-object v0

    .line 987
    :cond_4
    const-string v3, "<unknown>"

    goto :goto_0

    .line 989
    :cond_5
    const-string v3, "<unknown>"

    goto :goto_1

    .line 1004
    :cond_6
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1006
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1007
    const-string v4, "artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v4, "album_artist"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const-string v4, "album"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string v3, "composer"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v3, "genre"

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v3, :cond_7

    .line 1016
    const-string/jumbo v3, "year"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    :cond_7
    const-string/jumbo v3, "track"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    const-string v3, "duration"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1020
    const-string v3, "compilation"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1021
    const-string/jumbo v3, "recordingtype"

    iget v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 1007
    :cond_8
    const-string v3, "<unknown>"

    goto :goto_3

    .line 1009
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 1011
    :cond_a
    const-string v3, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 15
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 582
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 583
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 584
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 586
    if-nez p7, :cond_4

    .line 587
    if-nez p8, :cond_0

    #calls: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 588
    const/16 p8, 0x1

    .line 590
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 593
    if-eqz p2, :cond_1

    .line 594
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 598
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 599
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .line 600
    .local v13, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v13, :cond_2

    .line 601
    iget v3, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 602
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 603
    iget-object v3, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 608
    .end local v13           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 609
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 612
    :cond_3
    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v3, :cond_4

    .line 615
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 616
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 624
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 625
    .local v9, beforeMakeEntryTime:J
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 626
    .local v2, entry:Landroid/media/MediaScanner$FileEntry;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-static {v3, v4, v5}, Landroid/media/MediaScanner;->access$314(Landroid/media/MediaScanner;J)J

    .line 629
    if-eqz v2, :cond_8

    iget-wide v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v11, p3, v3

    .line 630
    .local v11, delta:J
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, v11, v3

    if-gtz v3, :cond_5

    const-wide/16 v3, -0x1

    cmp-long v3, v11, v3

    if-gez v3, :cond_9

    :cond_5
    const/4 v14, 0x1

    .line 631
    .local v14, wasModified:Z
    :goto_1
    if-eqz v2, :cond_6

    if-eqz v14, :cond_7

    .line 632
    :cond_6
    if-eqz v14, :cond_a

    .line 633
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 638
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 641
    :cond_7
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 642
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    const/4 v2, 0x0

    .line 666
    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    :goto_3
    return-object v2

    .line 629
    .end local v11           #delta:J
    .end local v14           #wasModified:Z
    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_8
    const-wide/16 v11, 0x0

    goto :goto_0

    .line 630
    .restart local v11       #delta:J
    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    .line 635
    .restart local v14       #wasModified:Z
    :cond_a
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_b

    const/16 v8, 0x3001

    :goto_4
    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    goto :goto_2

    .end local v2           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .line 648
    .restart local v2       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_c
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 649
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 650
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 651
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 652
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 653
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 654
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 655
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 656
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 657
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 658
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 659
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 660
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 661
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 662
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 663
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 664
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    goto :goto_3
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaInserter;->clear()V

    .line 685
    :cond_0
    return-void
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 24
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    .line 690
    const/16 v21, 0x0

    .local v21, result:Landroid/net/Uri;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p9

    .line 693
    :try_start_0
    invoke-virtual/range {v3 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v4

    .line 696
    .local v4, entry:Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    if-eqz v3, :cond_0

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 700
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->isDrmConverted:Z

    .line 701
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmPath:Ljava/lang/String;

    .line 705
    :cond_0
    if-eqz v4, :cond_2

    iget-boolean v3, v4, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v3, :cond_1

    if-eqz p8, :cond_2

    .line 706
    :cond_1
    if-eqz p9, :cond_3

    .line 707
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;

    move-result-object v21

    .line 759
    .end local v4           #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_2
    :goto_0
    return-object v21

    .line 709
    .restart local v4       #entry:Landroid/media/MediaScanner$FileEntry;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 710
    .local v17, lowpath:Ljava/lang/String;
    const-string v3, "/ringtones/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_9

    const/4 v5, 0x1

    .line 711
    .local v5, ringtones:Z
    :goto_1
    const-string v3, "SPR"

    const-string/jumbo v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "/download/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a

    const-string v3, ".dcf"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v6, 0x1

    .line 713
    .local v6, dcfRingtones:Z
    :goto_2
    const-string v3, "/notifications/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_b

    const/4 v7, 0x1

    .line 714
    .local v7, notifications:Z
    :goto_3
    const-string v3, "/alarms/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_c

    const/4 v8, 0x1

    .line 715
    .local v8, alarms:Z
    :goto_4
    const-string v3, "/podcasts/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_d

    const/4 v10, 0x1

    .line 716
    .local v10, podcasts:Z
    :goto_5
    const-string v3, "/music/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_4

    if-nez v5, :cond_e

    if-nez v7, :cond_e

    if-nez v8, :cond_e

    if-nez v10, :cond_e

    :cond_4
    const/4 v9, 0x1

    .line 719
    .local v9, music:Z
    :goto_6
    const-wide/16 v12, 0x0

    .local v12, beforeMetaParsingTime:J
    const-wide/16 v18, 0x0

    .line 721
    .local v18, metaParsingTime:J
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 724
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v3, v0, v1, v2}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v18, v22, v12

    .line 727
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/media/MediaScanner;->access$1014(Landroid/media/MediaScanner;J)J

    .line 730
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 731
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v11, 0x20

    if-eq v3, v11, :cond_7

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 733
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v18, v22, v12

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Landroid/media/MediaScanner;->access$1114(Landroid/media/MediaScanner;J)J

    .line 739
    :cond_7
    const-string v3, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 740
    .local v16, lastDot:I
    if-lez v16, :cond_8

    const-wide/16 v22, 0x0

    cmp-long v3, v12, v22

    if-eqz v3, :cond_8

    const-wide/16 v22, 0x0

    cmp-long v3, v18, v22

    if-eqz v3, :cond_8

    .line 741
    add-int/lit8 v3, v16, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    .line 742
    .local v15, extention:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/MediaScanner$FileParsingTime;

    .line 743
    .local v20, parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    if-eqz v20, :cond_f

    .line 744
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v15           #extention:Ljava/lang/String;
    .end local v20           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :cond_8
    :goto_7
    move-object/from16 v3, p0

    .line 751
    invoke-direct/range {v3 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZZ)Landroid/net/Uri;

    move-result-object v21

    goto/16 :goto_0

    .line 710
    .end local v5           #ringtones:Z
    .end local v6           #dcfRingtones:Z
    .end local v7           #notifications:Z
    .end local v8           #alarms:Z
    .end local v9           #music:Z
    .end local v10           #podcasts:Z
    .end local v12           #beforeMetaParsingTime:J
    .end local v16           #lastDot:I
    .end local v18           #metaParsingTime:J
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 711
    .restart local v5       #ringtones:Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 713
    .restart local v6       #dcfRingtones:Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 714
    .restart local v7       #notifications:Z
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 715
    .restart local v8       #alarms:Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 716
    .restart local v10       #podcasts:Z
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 747
    .restart local v9       #music:Z
    .restart local v12       #beforeMetaParsingTime:J
    .restart local v15       #extention:Ljava/lang/String;
    .restart local v16       #lastDot:I
    .restart local v18       #metaParsingTime:J
    .restart local v20       #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v11, Landroid/media/MediaScanner$FileParsingTime;

    move-wide/from16 v0, v18

    invoke-direct {v11, v15, v0, v1}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 754
    .end local v4           #entry:Landroid/media/MediaScanner$FileEntry;
    .end local v5           #ringtones:Z
    .end local v6           #dcfRingtones:Z
    .end local v7           #notifications:Z
    .end local v8           #alarms:Z
    .end local v9           #music:Z
    .end local v10           #podcasts:Z
    .end local v12           #beforeMetaParsingTime:J
    .end local v15           #extention:Ljava/lang/String;
    .end local v16           #lastDot:I
    .end local v17           #lowpath:Ljava/lang/String;
    .end local v18           #metaParsingTime:J
    .end local v20           #parsingTime:Landroid/media/MediaScanner$FileParsingTime;
    :catch_0
    move-exception v14

    .line 755
    .local v14, e:Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v11, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v3, v11, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "genreTagValue"

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 875
    if-nez p1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-object v7

    .line 878
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 880
    .local v4, length:I
    if-lez v4, :cond_9

    .line 881
    const/4 v6, 0x0

    .line 882
    .local v6, parenthesized:Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 883
    .local v5, number:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 884
    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 885
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 886
    .local v0, c:C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 887
    const/4 v6, 0x1

    .line 884
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 888
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 889
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 894
    .end local v0           #c:C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 895
    .local v1, charAfterNumber:C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 898
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 899
    .local v2, genreIndex:S
    if-ltz v2, :cond_9

    .line 900
    invoke-static {}, Landroid/media/MediaScanner;->access$1400()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    .line 901
    invoke-static {}, Landroid/media/MediaScanner;->access$1400()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 894
    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 902
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 904
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 907
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 908
    add-int/lit8 v3, v3, 0x1

    .line 910
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 911
    .local v7, ret:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1           #charAfterNumber:C
    .end local v2           #genreIndex:S
    .end local v3           #i:I
    .end local v5           #number:Ljava/lang/StringBuffer;
    .end local v6           #parenthesized:Z
    .end local v7           #ret:Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 924
    goto :goto_0

    .line 916
    .restart local v1       #charAfterNumber:C
    .restart local v2       #genreIndex:S
    .restart local v3       #i:I
    .restart local v5       #number:Ljava/lang/StringBuffer;
    .restart local v6       #parenthesized:Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 919
    .end local v2           #genreIndex:S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 781
    const-string/jumbo v4, "title"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "title;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 785
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 845
    :cond_1
    :goto_0
    return-void

    .line 786
    :cond_2
    const-string v4, "artist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "artist;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 787
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 788
    :cond_4
    const-string v4, "albumartist"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "albumartist;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "band"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "band;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 790
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 791
    :cond_6
    const-string v4, "album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "album;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 792
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 793
    :cond_8
    const-string v4, "composer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "composer;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 794
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 795
    :cond_a
    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "genre"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "genre;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 797
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 798
    :cond_c
    const-string/jumbo v4, "year"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "year;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 799
    :cond_d
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 800
    :cond_e
    const-string/jumbo v4, "tracknumber"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "tracknumber;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 803
    :cond_f
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 804
    .local v1, num:I
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v2, v2, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v1

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 805
    .end local v1           #num:I
    :cond_10
    const-string v4, "discnumber"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "set"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "set;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 809
    :cond_11
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    .line 810
    .restart local v1       #num:I
    mul-int/lit16 v2, v1, 0x3e8

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 811
    .end local v1           #num:I
    :cond_12
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 812
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 813
    :cond_13
    const-string/jumbo v4, "writer"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "writer;"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 814
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 816
    :cond_15
    const-string/jumbo v4, "resolution"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string/jumbo v4, "resolution"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 817
    :cond_16
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mResolution:Ljava/lang/String;

    goto/16 :goto_0

    .line 819
    :cond_17
    const-string v4, "compilation"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 820
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 821
    :cond_18
    const-string v4, "isdrm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 822
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_19

    :goto_1
    iput-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_19
    move v2, v3

    goto :goto_1

    .line 823
    :cond_1a
    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 824
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 825
    :cond_1b
    const-string v2, "height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 826
    invoke-direct {p0, p2, v3, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0

    .line 827
    :cond_1c
    const-string/jumbo v2, "recordingtype"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 828
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    goto/16 :goto_0

    .line 829
    :cond_1d
    const-string/jumbo v2, "weather"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 830
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    goto/16 :goto_0

    .line 831
    :cond_1e
    const-string v2, "cityid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 832
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    goto/16 :goto_0

    .line 833
    :cond_1f
    const-string v2, "location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 835
    const/16 v2, 0x2d

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 836
    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_20

    .line 837
    const/16 v2, 0x2b

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 839
    :cond_20
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    .line 840
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 10
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 674
    if-eqz p6, :cond_0

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$608(Landroid/media/MediaScanner;)J

    .line 677
    :goto_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 678
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$708(Landroid/media/MediaScanner;)J

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 951
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    :goto_0
    return-void

    .line 958
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 959
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
