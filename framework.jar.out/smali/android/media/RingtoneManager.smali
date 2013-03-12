.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field private static final DRM_COLUMNS:[Ljava/lang/String; = null

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String; = null

.field private static final MEDIA_COLUMNS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_NOTIFICATION_2:I = 0x10

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_RINGTONE_2:I = 0x8

.field public static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncludeDrm:Z

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 204
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title AS title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->DRM_COLUMNS:[Ljava/lang/String;

    .line 210
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 247
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 259
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 260
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 247
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 271
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 272
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 273
    return-void
.end method

.method private static checkDefaultRingtoneProperUri(Landroid/content/Context;I)V
    .locals 22
    .parameter "context"
    .parameter "type"

    .prologue
    .line 724
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundUriField(I)Ljava/lang/String;

    move-result-object v17

    .line 725
    .local v17, soundUri:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundConstantPathField(I)Ljava/lang/String;

    move-result-object v16

    .line 727
    .local v16, soundPath:Ljava/lang/String;
    if-eqz v17, :cond_0

    if-nez v16, :cond_1

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 731
    .local v20, uriString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 733
    .local v15, pathString:Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 735
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 736
    const-string v2, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDefaultRingtoneProperUri : InternalMediaAudio uriString not null    type:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 739
    :cond_2
    if-nez v15, :cond_3

    .line 740
    const-string v2, "RingtoneManager"

    const-string v4, "checkDefaultRingtoneProperUri : Settings of SoundConstantPath null "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :cond_3
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 744
    .local v3, uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 745
    .local v12, cursor1:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 749
    .local v13, cursor2:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 752
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 753
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 754
    const-string v2, "_data"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 757
    .local v18, str:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 758
    const-string v2, "RingtoneManager"

    const-string v4, "checkDefaultRingtoneProperUri : path and URI match to each other "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 794
    :cond_4
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 763
    .end local v18           #str:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v2, "RingtoneManager"

    const-string v4, "checkDefaultRingtoneProperUri : patch and URI DONT match"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 767
    .local v5, uriSearch2:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v2

    const-string v7, "_data=?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v15, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 770
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 771
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 772
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 775
    .local v10, _id:J
    const-string v2, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDefaultRingtoneProperUri : we\'ve found same path and another index :  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 778
    .local v19, uriForDefaultRingtone:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundUriField(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 781
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 782
    .local v21, values:Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 793
    .end local v10           #_id:J
    .end local v19           #uriForDefaultRingtone:Landroid/net/Uri;
    .end local v21           #values:Landroid/content/ContentValues;
    :goto_1
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 794
    :cond_6
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 787
    :cond_7
    :try_start_2
    const-string v2, "RingtoneManager"

    const-string v4, "checkDefaultRingtoneProperUri : we havn\'t found same path "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 789
    .end local v5           #uriSearch2:Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 790
    .local v14, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDefaultRingtoneProperUri : Excepiton : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v2, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uriString : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", pathString : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 793
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 794
    :cond_8
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 793
    .end local v14           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 794
    :cond_9
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "includeDrm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 599
    :goto_0
    return-object v2

    .line 572
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 576
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 579
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 581
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 584
    :cond_2
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    if-nez p1, :cond_3

    .line 589
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v2, "is_drm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_3
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    const-string v2, "!=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static convertSettingForType(II)I
    .locals 4
    .parameter "type"
    .parameter "simId"

    .prologue
    const/16 v1, 0x10

    const/16 v0, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 912
    if-ne p1, v2, :cond_2

    .line 913
    if-ne p0, v2, :cond_1

    move p0, v0

    .line 927
    .end local p0
    :cond_0
    :goto_0
    return p0

    .line 915
    .restart local p0
    :cond_1
    if-ne p0, v3, :cond_0

    move p0, v1

    .line 916
    goto :goto_0

    .line 922
    :cond_2
    if-ne p0, v0, :cond_3

    move p0, v2

    .line 923
    goto :goto_0

    .line 924
    :cond_3
    if-ne p0, v1, :cond_0

    move p0, v3

    .line 925
    goto :goto_0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 673
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualDefaultRingtoneUri  type    :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->checkDefaultRingtoneProperUri(Landroid/content/Context;I)V

    .line 680
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-object v2

    .line 682
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, uriString:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method private static getDefaultSoundConstantPathField(I)Ljava/lang/String;
    .locals 3
    .parameter "type"

    .prologue
    .line 689
    const-string v0, "_CONSTANT_PATH"

    .line 690
    .local v0, constantPath:Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 702
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 692
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 694
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ringtone_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 696
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 698
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notification_sound_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 700
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm_alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 690
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_4
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getDefaultSoundUriField(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 707
    sparse-switch p0, :sswitch_data_0

    .line 719
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 709
    :sswitch_0
    const-string/jumbo v0, "ringtone"

    goto :goto_0

    .line 711
    :sswitch_1
    const-string/jumbo v0, "ringtone_2"

    goto :goto_0

    .line 713
    :sswitch_2
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 715
    :sswitch_3
    const-string/jumbo v0, "notification_sound_2"

    goto :goto_0

    .line 717
    :sswitch_4
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 707
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_4
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 2
    .parameter "defaultRingtoneUri"

    .prologue
    const/4 v0, -0x1

    .line 951
    if-nez p0, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v0

    .line 953
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 954
    const/4 v0, 0x1

    goto :goto_0

    .line 955
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 956
    const/4 v0, 0x2

    goto :goto_0

    .line 957
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 958
    const/4 v0, 0x4

    goto :goto_0

    .line 959
    :cond_4
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 960
    const/16 v0, 0x8

    goto :goto_0

    .line 961
    :cond_5
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "type"

    .prologue
    .line 978
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 979
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 989
    :goto_0
    return-object v0

    .line 980
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 981
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 982
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 983
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 984
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 985
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    goto :goto_0

    .line 986
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    .line 987
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    goto :goto_0

    .line 989
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDrmRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 525
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->DRM_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v5, "title"

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 517
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 532
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 534
    .local v6, status:Ljava/lang/String;
    const-string/jumbo v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    invoke-static {v0, v3}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :cond_1
    return-object v4
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .parameter "context"
    .parameter "ringtoneUri"

    .prologue
    .line 628
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 6
    .parameter "context"
    .parameter "ringtoneUri"
    .parameter "streamType"

    .prologue
    const/4 v2, 0x0

    .line 643
    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 644
    .local v1, r:Landroid/media/Ringtone;
    if-ltz p2, :cond_0

    .line 645
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 647
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 648
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 656
    .end local v1           #r:Landroid/media/Ringtone;
    :cond_1
    :goto_0
    return-object v1

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open ringtone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 656
    goto :goto_0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 894
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 895
    const-string/jumbo v0, "ringtone"

    .line 905
    :goto_0
    return-object v0

    .line 896
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 897
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 898
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 899
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 900
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 901
    const-string/jumbo v0, "ringtone_2"

    goto :goto_0

    .line 902
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    .line 903
    const-string/jumbo v0, "notification_sound_2"

    goto :goto_0

    .line 905
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 427
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 486
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 488
    .local v0, rm:Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 490
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 491
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 494
    :cond_0
    if-nez v1, :cond_1

    .line 495
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 498
    :cond_1
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 502
    if-eqz p1, :cond_1

    .line 503
    const/4 v0, 0x0

    .line 505
    .local v0, uri:Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-static {p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 508
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 512
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 938
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 607
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 610
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 16
    .parameter "context"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 813
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v13

    .line 814
    .local v13, setting:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    const-string v0, "CTC"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CHM"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 818
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_profile_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 821
    .local v12, profileMode:I
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_4

    .line 822
    const-string v6, "com.android.settings"

    .line 823
    .local v6, AUTHORITY:Ljava/lang/String;
    const-string/jumbo v8, "profile"

    .line 824
    .local v8, PROFILE_TABLE:Ljava/lang/String;
    const-string v0, "content://com.android.settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 825
    .local v7, PROFILE_CONTENT_URI:Landroid/net/Uri;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 827
    .local v15, values:Landroid/content/ContentValues;
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_6

    .line 828
    const-string/jumbo v1, "profile_ringtone"

    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_3
    :goto_2
    add-int/lit8 v0, v12, 0x1

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 835
    .local v9, _uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v15, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 840
    .end local v6           #AUTHORITY:Ljava/lang/String;
    .end local v7           #PROFILE_CONTENT_URI:Landroid/net/Uri;
    .end local v8           #PROFILE_TABLE:Ljava/lang/String;
    .end local v9           #_uri:Landroid/net/Uri;
    .end local v12           #profileMode:I
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_4
    if-nez p2, :cond_a

    .line 841
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v13, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 828
    .restart local v6       #AUTHORITY:Ljava/lang/String;
    .restart local v7       #PROFILE_CONTENT_URI:Landroid/net/Uri;
    .restart local v8       #PROFILE_TABLE:Ljava/lang/String;
    .restart local v12       #profileMode:I
    .restart local v15       #values:Landroid/content/ContentValues;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 829
    :cond_6
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_8

    .line 830
    const-string/jumbo v1, "profile_gsm_ringtone"

    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 831
    :cond_8
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 832
    const-string/jumbo v1, "profile_notification_tone"

    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    .line 847
    .end local v6           #AUTHORITY:Ljava/lang/String;
    .end local v7           #PROFILE_CONTENT_URI:Landroid/net/Uri;
    .end local v8           #PROFILE_TABLE:Ljava/lang/String;
    .end local v12           #profileMode:I
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v13, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 856
    const/4 v10, 0x0

    .line 857
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 859
    .local v14, val:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 861
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundConstantPathField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 862
    const-string v0, "RingtoneManager"

    const-string v1, "RingtoneConstantPath: for internal is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 866
    :cond_c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 870
    if-eqz v10, :cond_d

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 871
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 872
    const-string v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 875
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActualDefaultRingtoneUri: ringtoneConstantPathFieldName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getDefaultSoundConstantPathField(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :cond_d
    if-eqz v10, :cond_0

    .line 883
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 879
    :catch_0
    move-exception v11

    .line 880
    .local v11, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RingtoneManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActualDefaultRingtoneUri : Excepiton : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    if-eqz v10, :cond_0

    .line 883
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 882
    .end local v11           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_e

    .line 883
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 544
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 545
    .local v0, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 547
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    .line 548
    :cond_0
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_3

    .line 552
    :cond_2
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 556
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_4
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 382
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 383
    iget-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    .line 390
    :goto_0
    return-object v3

    .line 386
    :cond_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 387
    .local v1, internalCursor:Landroid/database/Cursor;
    iget-boolean v3, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getDrmRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 388
    .local v0, drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    .line 390
    .local v2, mediaCursor:Landroid/database/Cursor;
    new-instance v3, Lcom/android/internal/database/SortCursor;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string/jumbo v5, "title_key"

    invoke-direct {v3, v4, v5}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 387
    .end local v0           #drmCursor:Landroid/database/Cursor;
    .end local v2           #mediaCursor:Landroid/database/Cursor;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getIncludeDrm()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    return v0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .locals 3
    .parameter "position"

    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 406
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 407
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 11
    .parameter "ringtoneUri"

    .prologue
    const/4 v7, -0x1

    .line 439
    if-nez p1, :cond_1

    move v4, v7

    .line 475
    :cond_0
    :goto_0
    return v4

    .line 441
    :cond_1
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 442
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 444
    .local v2, cursorCount:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_2

    move v4, v7

    .line 445
    goto :goto_0

    .line 449
    :cond_2
    const/4 v0, 0x0

    .line 450
    .local v0, currentUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 452
    .local v5, previousUriString:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_5

    .line 453
    const/4 v8, 0x2

    :try_start_0
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, uriString:Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 455
    :cond_3
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 458
    :cond_4
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 463
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->move(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    move-object v5, v6

    .line 452
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 470
    .end local v6           #uriString:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 471
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "RingtoneManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ringtone Picker index exceeded(Cursor Count="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 472
    goto :goto_0

    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    move v4, v7

    .line 475
    goto :goto_0
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "position"

    .prologue
    .line 419
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    :cond_0
    const/4 v0, 0x0

    .line 423
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getStopPreviousRingtone()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 311
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 304
    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 308
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIncludeDrm(Z)V
    .locals 0
    .parameter "includeDrm"

    .prologue
    .line 361
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mIncludeDrm:Z

    .line 362
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .locals 0
    .parameter "stopPreviousRingtone"

    .prologue
    .line 326
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 327
    return-void
.end method

.method public setType(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 285
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 291
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 292
    return-void
.end method

.method public stopPreviousRingtone()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 343
    :cond_0
    return-void
.end method
