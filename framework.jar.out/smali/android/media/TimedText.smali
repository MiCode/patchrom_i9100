.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$CharPos;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field public static final FIRST_PUBLIC_KEY:I = 0x1

.field public static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field public static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field public static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field public static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field public static final KEY_START_TIME:I = 0x7

.field public static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field public static final KEY_STRUCT_FONT_LIST:I = 0x9

.field public static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field public static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field public static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field public static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field public static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field public static final KEY_STRUCT_TEXT:I = 0x10

.field public static final KEY_STRUCT_TEXT_POS:I = 0xe

.field public static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field public static final KEY_TEXT_INDEX:I = 0x11

.field public static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field public static final LAST_PUBLIC_KEY:I = 0x11

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mParcel:Landroid/os/Parcel;

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;

.field private mWrapText:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 362
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    iput-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 96
    iput v3, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 97
    iput v3, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 98
    iput v3, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 99
    iput v3, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 100
    iput v3, p0, Landroid/media/TimedText;->mWrapText:I

    .line 102
    iput-object v2, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 103
    iput-object v2, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 104
    iput-object v2, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 105
    iput-object v2, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 106
    iput-object v2, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 107
    iput-object v2, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 109
    iput-object v2, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    .line 110
    iput-object v2, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 367
    .local v0, tmp:[B
    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 369
    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    iget-object v1, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 371
    const-string v1, "TimedText"

    const-string/jumbo v2, "parseParcel() fails"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    return-void
.end method

.method private containsKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 733
    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x1

    .line 736
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    .line 719
    if-lt p1, v0, :cond_0

    const/16 v1, 0x11

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-lt p1, v1, :cond_1

    const/16 v1, 0x6b

    if-le p1, v1, :cond_2

    .line 721
    :cond_1
    const/4 v0, 0x0

    .line 723
    :cond_2
    return v0
.end method

.method private keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized parseParcel(Landroid/os/Parcel;)Z
    .locals 18
    .parameter "parcel"

    .prologue
    .line 406
    monitor-enter p0

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 407
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_0

    .line 408
    const/4 v15, 0x0

    .line 553
    :goto_0
    monitor-exit p0

    return v15

    .line 414
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 415
    .local v11, textType:I
    const/16 v15, 0x11

    if-ne v11, v15, :cond_1

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 417
    .local v6, mTextIndex:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 427
    .end local v6           #mTextIndex:I
    .local v13, type:I
    :goto_1
    const/16 v15, 0x66

    if-ne v13, v15, :cond_7

    .line 428
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 429
    const/4 v15, 0x7

    if-eq v13, v15, :cond_2

    .line 430
    const/4 v15, 0x0

    goto :goto_0

    .line 423
    .end local v13           #type:I
    :cond_1
    move v13, v11

    .restart local v13       #type:I
    goto :goto_1

    .line 432
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 433
    .local v5, mStartTimeMs:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 436
    const/16 v15, 0x10

    if-eq v13, v15, :cond_3

    .line 437
    const/4 v15, 0x0

    goto :goto_0

    .line 440
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 441
    .local v10, textLen:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 442
    .local v9, text:[B
    if-eqz v9, :cond_4

    array-length v15, v9

    if-nez v15, :cond_6

    .line 443
    :cond_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    .line 453
    .end local v5           #mStartTimeMs:I
    .end local v9           #text:[B
    .end local v10           #textLen:I
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v15

    if-lez v15, :cond_a

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 455
    .local v3, key:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v15

    if-nez v15, :cond_8

    .line 456
    const-string v15, "TimedText"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid timed text key found: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 445
    .end local v3           #key:I
    .restart local v5       #mStartTimeMs:I
    .restart local v9       #text:[B
    .restart local v10       #textLen:I
    :cond_6
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v9}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 406
    .end local v5           #mStartTimeMs:I
    .end local v9           #text:[B
    .end local v10           #textLen:I
    .end local v11           #textType:I
    .end local v13           #type:I
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 448
    .restart local v11       #textType:I
    .restart local v13       #type:I
    :cond_7
    const/16 v15, 0x65

    if-eq v13, v15, :cond_5

    .line 449
    :try_start_2
    const-string v15, "TimedText"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid timed text key found: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 460
    .restart local v3       #key:I
    :cond_8
    const/4 v7, 0x0

    .line 462
    .local v7, object:Ljava/lang/Object;
    packed-switch v3, :pswitch_data_0

    .line 543
    .end local v7           #object:Ljava/lang/Object;
    :goto_3
    :pswitch_0
    if-eqz v7, :cond_5

    .line 544
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 545
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 464
    .restart local v7       #object:Ljava/lang/Object;
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 466
    .local v7, object:Ljava/util/List;
    goto :goto_3

    .line 469
    .local v7, object:Ljava/lang/Object;
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 471
    .local v7, object:Ljava/util/List;
    goto :goto_3

    .line 474
    .local v7, object:Ljava/lang/Object;
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 476
    .local v7, object:Ljava/util/List;
    goto :goto_3

    .line 479
    .local v7, object:Ljava/lang/Object;
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 481
    .local v7, object:Ljava/util/List;
    goto :goto_3

    .line 484
    .local v7, object:Ljava/lang/Object;
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 487
    .local v7, object:Ljava/util/List;
    goto :goto_3

    .line 490
    .local v7, object:Ljava/lang/Object;
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 493
    .local v7, object:Ljava/util/List;
    goto :goto_3

    .line 496
    .local v7, object:Ljava/lang/Object;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/TimedText;->mWrapText:I

    .line 497
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/TimedText;->mWrapText:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 498
    .local v7, object:Ljava/lang/Integer;
    goto :goto_3

    .line 501
    .local v7, object:Ljava/lang/Object;
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 502
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 503
    .local v7, object:Ljava/lang/Integer;
    goto :goto_3

    .line 506
    .local v7, object:Ljava/lang/Object;
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 507
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/TimedText;->mDisplayFlags:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 508
    .local v7, object:Ljava/lang/Integer;
    goto/16 :goto_3

    .line 512
    .local v7, object:Ljava/lang/Object;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 513
    .local v2, horizontal:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 514
    .local v14, vertical:I
    new-instance v15, Landroid/media/TimedText$Justification;

    invoke-direct {v15, v2, v14}, Landroid/media/TimedText$Justification;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 516
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 517
    .local v7, object:Landroid/media/TimedText$Justification;
    goto/16 :goto_3

    .line 520
    .end local v2           #horizontal:I
    .end local v14           #vertical:I
    .local v7, object:Ljava/lang/Object;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 521
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 522
    .local v7, object:Ljava/lang/Integer;
    goto/16 :goto_3

    .line 525
    .local v7, object:Ljava/lang/Object;
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 526
    .local v12, top:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 527
    .local v4, left:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 528
    .local v1, bottom:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 529
    .local v8, right:I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v4, v12, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    goto/16 :goto_3

    .line 534
    .end local v1           #bottom:I
    .end local v4           #left:I
    .end local v8           #right:I
    .end local v12           #top:I
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/media/TimedText;->mScrollDelay:I

    .line 535
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/TimedText;->mScrollDelay:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 536
    .local v7, object:Ljava/lang/Integer;
    goto/16 :goto_3

    .line 552
    .end local v3           #key:I
    .end local v7           #object:Ljava/lang/Integer;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 553
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private readBlinkingText(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 704
    .local v2, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    .local v1, endChar:I
    new-instance v0, Landroid/media/TimedText$CharPos;

    invoke-direct {v0, v2, v1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 707
    .local v0, blinkingPos:Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 708
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 710
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    return-void
.end method

.method private readFont(Landroid/os/Parcel;)V
    .locals 8
    .parameter "parcel"

    .prologue
    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 625
    .local v0, entryCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 627
    .local v3, id:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 629
    .local v5, nameLen:I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 630
    .local v6, text:[B
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Ljava/lang/String;-><init>([BII)V

    .line 632
    .local v4, name:Ljava/lang/String;
    new-instance v1, Landroid/media/TimedText$Font;

    invoke-direct {v1, v3, v4}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    .line 634
    .local v1, font:Landroid/media/TimedText$Font;
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 635
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 637
    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 639
    .end local v1           #font:Landroid/media/TimedText$Font;
    .end local v3           #id:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameLen:I
    .end local v6           #text:[B
    :cond_1
    return-void
.end method

.method private readHighlight(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 646
    .local v2, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 647
    .local v0, endChar:I
    new-instance v1, Landroid/media/TimedText$CharPos;

    invoke-direct {v1, v2, v0}, Landroid/media/TimedText$CharPos;-><init>(II)V

    .line 649
    .local v1, pos:Landroid/media/TimedText$CharPos;
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 650
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 652
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    return-void
.end method

.method private readHyperText(Landroid/os/Parcel;)V
    .locals 9
    .parameter "parcel"

    .prologue
    const/4 v8, 0x0

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 681
    .local v5, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 683
    .local v2, endChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 684
    .local v4, len:I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 685
    .local v6, url:[B
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 687
    .local v7, urlString:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 689
    .local v0, alt:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    .line 690
    .local v1, altString:Ljava/lang/String;
    new-instance v3, Landroid/media/TimedText$HyperText;

    invoke-direct {v3, v5, v2, v7, v1}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 693
    .local v3, hyperText:Landroid/media/TimedText$HyperText;
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v8, :cond_0

    .line 694
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 696
    :cond_0
    iget-object v8, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    return-void
.end method

.method private readKaraoke(Landroid/os/Parcel;)V
    .locals 8
    .parameter "parcel"

    .prologue
    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 661
    .local v2, entryCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 663
    .local v6, startTimeMs:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 664
    .local v1, endTimeMs:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 665
    .local v5, startChar:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 666
    .local v0, endChar:I
    new-instance v4, Landroid/media/TimedText$Karaoke;

    invoke-direct {v4, v6, v1, v5, v0}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    .line 669
    .local v4, kara:Landroid/media/TimedText$Karaoke;
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 670
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 672
    :cond_0
    iget-object v7, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 674
    .end local v0           #endChar:I
    .end local v1           #endTimeMs:I
    .end local v4           #kara:Landroid/media/TimedText$Karaoke;
    .end local v5           #startChar:I
    .end local v6           #startTimeMs:I
    :cond_1
    return-void
.end method

.method private readStyle(Landroid/os/Parcel;)V
    .locals 14
    .parameter "parcel"

    .prologue
    .line 560
    const/4 v9, 0x0

    .line 561
    .local v9, endOfStyle:Z
    const/4 v1, -0x1

    .line 562
    .local v1, startChar:I
    const/4 v2, -0x1

    .line 563
    .local v2, endChar:I
    const/4 v3, -0x1

    .line 564
    .local v3, fontId:I
    const/4 v4, 0x0

    .line 565
    .local v4, isBold:Z
    const/4 v5, 0x0

    .line 566
    .local v5, isItalic:Z
    const/4 v6, 0x0

    .line 567
    .local v6, isUnderlined:Z
    const/4 v7, -0x1

    .line 568
    .local v7, fontSize:I
    const/4 v8, -0x1

    .line 569
    .local v8, colorRGBA:I
    :goto_0
    if-nez v9, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v12

    if-lez v12, :cond_3

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 571
    .local v11, key:I
    sparse-switch v11, :sswitch_data_0

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    invoke-virtual {p1, v12}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 605
    const/4 v9, 0x1

    goto :goto_0

    .line 573
    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 574
    goto :goto_0

    .line 577
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 578
    goto :goto_0

    .line 581
    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 582
    goto :goto_0

    .line 585
    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 588
    .local v10, flags:I
    rem-int/lit8 v12, v10, 0x2

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    const/4 v4, 0x1

    .line 589
    :goto_1
    rem-int/lit8 v12, v10, 0x4

    const/4 v13, 0x2

    if-lt v12, v13, :cond_1

    const/4 v5, 0x1

    .line 590
    :goto_2
    div-int/lit8 v12, v10, 0x4

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    const/4 v6, 0x1

    .line 591
    :goto_3
    goto :goto_0

    .line 588
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 589
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 590
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 594
    .end local v10           #flags:I
    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 595
    goto :goto_0

    .line 598
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 599
    goto :goto_0

    .line 611
    .end local v11           #key:I
    :cond_3
    new-instance v0, Landroid/media/TimedText$Style;

    invoke-direct/range {v0 .. v8}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    .line 613
    .local v0, style:Landroid/media/TimedText$Style;
    iget-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v12, :cond_4

    .line 614
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 616
    :cond_4
    iget-object v12, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    return-void

    .line 571
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 756
    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object v0
.end method
