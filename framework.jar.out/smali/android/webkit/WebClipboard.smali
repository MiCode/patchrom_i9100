.class public Landroid/webkit/WebClipboard;
.super Ljava/lang/Object;
.source "WebClipboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;,
        Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;
    }
.end annotation


# static fields
.field static final INIT:I = 0x1

.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern; = null

.field static final tempDirectory:Ljava/lang/String; = "/sdcard/EmailTempImage/"


# instance fields
.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field protected mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

.field mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebClipboard;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    .line 57
    iput-object v0, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebClipboard;->mViewWidth:I

    .line 74
    const-string v0, "clipboardEx"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    .line 78
    const-string v0, "enterprise_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Landroid/webkit/WebClipboard;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 80
    iget-object v0, p0, Landroid/webkit/WebClipboard;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/webkit/WebClipboard;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 84
    :cond_0
    const-string/jumbo v0, "webclipboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipservice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;-><init>(Landroid/webkit/WebClipboard;)V

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    .line 90
    invoke-virtual {p0}, Landroid/webkit/WebClipboard;->createHandler()V

    .line 91
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebClipboard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/webkit/WebClipboard;->nativeInitPasteboardJni()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/WebClipboard;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/webkit/WebClipboard;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebClipboard;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .locals 5
    .parameter "path"

    .prologue
    .line 120
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDirectory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 123
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 124
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/webkit/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 123
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 132
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 133
    return-void
.end method

.method private escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "text"

    .prologue
    const/16 v9, 0x20

    .line 426
    sget-object v6, Landroid/webkit/WebClipboard;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 427
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 428
    .local v3, match:Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 430
    .local v5, out:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 432
    if-nez v5, :cond_0

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #out:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .restart local v5       #out:Ljava/lang/StringBuilder;
    :cond_0
    const/4 v1, 0x0

    .line 436
    .local v1, end:I
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 437
    .local v7, start:I
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 439
    invoke-virtual {p1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 440
    .local v0, c:I
    if-ne v0, v9, :cond_5

    .line 442
    const/4 v2, 0x1

    .local v2, i:I
    sub-int v4, v1, v7

    .local v4, n:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 443
    const-string v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_1

    .line 456
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 458
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 460
    .end local v0           #c:I
    .end local v1           #end:I
    .end local v7           #start:I
    :cond_4
    return-object p1

    .line 446
    .restart local v0       #c:I
    .restart local v1       #end:I
    .restart local v7       #start:I
    :cond_5
    const/16 v8, 0xd

    if-eq v0, v8, :cond_6

    const/16 v8, 0xa

    if-ne v0, v8, :cond_7

    .line 447
    :cond_6
    const-string v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 448
    :cond_7
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_8

    .line 449
    const-string v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 450
    :cond_8
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_9

    .line 451
    const-string v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 452
    :cond_9
    const/16 v8, 0x26

    if-ne v0, v8, :cond_3

    .line 453
    const-string v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private giveFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filePath"

    .prologue
    .line 142
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "giveFileUrl ent "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, mFile:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, fileURL:Ljava/lang/String;
    return-object v0
.end method

.method private makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "htmlFragment"

    .prologue
    .line 565
    const/4 v13, 0x0

    .line 567
    .local v13, result:Ljava/lang/String;
    const-string v16, "WebClipboard"

    const-string/jumbo v17, "makeHtmlFragmentForInsertedImage"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    if-nez p1, :cond_0

    .line 570
    const-string v16, "WebClipboard"

    const-string/jumbo v17, "makeHtmlFragmentForInsertedImage htmlFragment == null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v16, ""

    .line 665
    :goto_0
    return-object v16

    .line 574
    :cond_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 575
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### htmlFragment :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 577
    .local v6, imageUri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, absoluteFilePath:Ljava/lang/String;
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### absoluteFilePath :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, dstFilePath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .local v7, mFile:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 585
    .local v11, originalFile:Ljava/io/File;
    const-wide/32 v16, 0x100000

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_1

    .line 587
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### originalFile.length() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_1
    invoke-static {v2, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 591
    .local v14, src:Landroid/graphics/Bitmap;
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### htmlFragment : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 594
    .local v10, originWidth:I
    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 595
    .local v9, originHeight:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkit/WebClipboard;->mViewWidth:I

    .line 596
    .local v15, width:I
    mul-int v16, v9, v15

    div-int v5, v16, v10

    .line 598
    .local v5, height:I
    const-wide/32 v16, 0x100000

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_7

    .line 600
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Big Data"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    if-eqz v14, :cond_3

    .line 605
    :try_start_0
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 607
    .local v12, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".jpg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-gtz v16, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".jpeg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_5

    .line 609
    :cond_2
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 611
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 612
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 647
    .end local v12           #outStream:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 649
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### htmlFragment : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-eqz v15, :cond_8

    .line 653
    if-le v15, v10, :cond_4

    .line 655
    move v15, v10

    .line 656
    move v5, v9

    .line 659
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<img src="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " width="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " height="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " />"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    .line 660
    goto/16 :goto_0

    .line 614
    .restart local v12       #outStream:Ljava/io/FileOutputStream;
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_6

    .line 616
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 618
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 619
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 629
    .end local v12           #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 630
    .local v4, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 631
    const-string v16, ""

    goto/16 :goto_0

    .line 623
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .restart local v12       #outStream:Ljava/io/FileOutputStream;
    :cond_6
    const/16 v16, 0x1

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebClipboard;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 625
    const-string v16, "WebClipboard"

    const-string v17, "####################### makeHtmlFragmentForInsertedImage : copyFile Fail !!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v16, ""
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 632
    .end local v12           #outStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 633
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 634
    const-string v16, ""

    goto/16 :goto_0

    .line 640
    .end local v4           #e:Ljava/io/IOException;
    :cond_7
    const/16 v16, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebClipboard;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 642
    const-string v16, "WebClipboard"

    const-string v17, "####################### makeHtmlFragmentForInsertedImage : copyFile Fail !!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v16, ""

    goto/16 :goto_0

    .line 664
    :cond_8
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<img src="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " />"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    .line 665
    goto/16 :goto_0
.end method

.method private native nativeInitPasteboardJni()V
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 10
    .parameter "data"

    .prologue
    .line 517
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "pasteClipBoardData"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 518
    const/4 v4, 0x0

    .line 520
    .local v4, paste:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v0

    .line 522
    .local v0, dataFormat:I
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    move-object v2, p1

    .line 523
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 524
    .local v2, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 550
    .end local v2           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 551
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pasteClipBoardData paste not NULL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 552
    iget-object v7, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    invoke-interface {v7, v4, v0}, Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;->onPaste(Ljava/lang/String;I)V

    .line 555
    :cond_1
    return-void

    .line 525
    :cond_2
    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    .line 526
    const-string v7, "WebClipboard"

    const-string/jumbo v8, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    .line 527
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 528
    .local v5, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, tmp_data_str:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 530
    invoke-direct {p0, v6}, Landroid/webkit/WebClipboard;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 534
    :goto_1
    const-string v7, "WebClipboard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 536
    .end local v5           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v6           #tmp_data_str:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x3

    if-ne v0, v7, :cond_0

    .line 537
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "pasteClipBoardData FORMAT_BITMAP_ID "

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v3, p1

    .line 538
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 540
    .local v3, imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkit/WebClipboard;->giveFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, fileUrl:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pasteClipBoardData fileUrl "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 544
    move-object v4, v1

    .line 545
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pasteClipBoardData paste fileUrl "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private saveBitampTemporary(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 12
    .parameter "bitmapForSave"

    .prologue
    .line 194
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "saveBitampTemporary ent "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/io/File;

    const-string v9, "/sdcard/EmailTempImage/"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 200
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 201
    .local v7, randNum:Ljava/util/Random;
    const/16 v9, 0x1f4

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 202
    .local v8, randNumber:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sdcard/EmailTempImage/file_temp_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, filePath:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveBitampTemporary filePath "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    .local v4, mFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 209
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 212
    :cond_0
    const/4 v5, 0x0

    .line 215
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p1, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 221
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, fileURL:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveBitampTemporary fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    if-eqz v6, :cond_1

    .line 225
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    move-object v5, v6

    .line 229
    .end local v3           #fileURL:Ljava/lang/String;
    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :goto_1
    return-object v3

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 219
    const/4 v3, 0x0

    goto :goto_1

    .line 226
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v3       #fileURL:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 227
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fileURL:Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private saveBitampTemporary(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "imageFilePath"

    .prologue
    .line 154
    :try_start_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "saveBitampTemporary String ent "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveBitmapTemporary imageFilePath: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p1}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, tmpFilePath:Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveBitampTemporary String tmpFilePath "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v4, inputFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v6, outputFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 167
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 171
    :cond_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 172
    .local v3, in:Ljava/io/FileReader;
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 175
    .local v5, out:Ljava/io/FileWriter;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I

    move-result v0

    .local v0, c:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    .line 176
    invoke-virtual {v5, v0}, Ljava/io/FileWriter;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0           #c:I
    .end local v3           #in:Ljava/io/FileReader;
    .end local v4           #inputFile:Ljava/io/File;
    .end local v5           #out:Ljava/io/FileWriter;
    .end local v6           #outputFile:Ljava/io/File;
    .end local v7           #tmpFilePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    const/4 v2, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-object v2

    .line 178
    .restart local v0       #c:I
    .restart local v3       #in:Ljava/io/FileReader;
    .restart local v4       #inputFile:Ljava/io/File;
    .restart local v5       #out:Ljava/io/FileWriter;
    .restart local v6       #outputFile:Ljava/io/File;
    .restart local v7       #tmpFilePath:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 179
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 181
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 183
    .local v2, fileURL:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v5, 0x0

    .line 673
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 674
    .local v3, source:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 676
    .local v4, target:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 677
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 678
    .local v2, i:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 679
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 688
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 689
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 693
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return v5

    .line 681
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v3       #source:Ljava/io/FileInputStream;
    .restart local v4       #target:Ljava/io/FileOutputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 682
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 684
    :cond_1
    if-eqz v4, :cond_2

    .line 685
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 687
    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    .line 691
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 692
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public declared-synchronized createHandler()V
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Landroid/webkit/WebClipboard$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebClipboard$1;-><init>(Landroid/webkit/WebClipboard;)V

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteTempDirectory()V
    .locals 3

    .prologue
    .line 136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "deleteTempDirectory"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/EmailTempImage/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-direct {p0, v0}, Landroid/webkit/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 139
    return-void
.end method

.method public dismissClipboardUI()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 466
    return-void
.end method

.method public getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filePath"

    .prologue
    .line 237
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCloneFilePath filePath"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    if-nez p1, :cond_0

    .line 240
    const/4 v2, 0x0

    .line 266
    :goto_0
    return-object v2

    .line 244
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v5, "/sdcard/EmailTempImage/"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 249
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v3, inputFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, fileName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 253
    const-string v5, " "

    const-string v6, "_"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 256
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 258
    move-object v4, v1

    .line 259
    .local v4, tmp:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    .end local v4           #tmp:Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/EmailTempImage/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, fullFilePath:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCloneFilePath String filePath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 12

    .prologue
    .line 322
    const-string v9, "WebClipboard"

    const-string v10, "getHTML enter"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v9, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v10, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 325
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    const/4 v2, 0x0

    .line 327
    .local v2, data_str:Ljava/lang/String;
    const/4 v1, -0x1

    .line 329
    .local v1, dataFormat:I
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    .line 333
    :cond_0
    const/4 v9, 0x4

    if-ne v1, v9, :cond_1

    move-object v4, v0

    .line 334
    check-cast v4, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 335
    .local v4, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    .end local v4           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :goto_0
    const-string v9, "ClipboardEx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getHTML:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v2

    .line 367
    :goto_1
    return-object v9

    .line 336
    :cond_1
    const/4 v9, 0x2

    if-ne v1, v9, :cond_3

    .line 337
    const-string v9, "WebClipboard"

    const-string v10, "getHTML FORMAT_TEXT_ID"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v0

    .line 338
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 339
    .local v7, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 340
    .local v8, tmp_data_str:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 341
    invoke-direct {p0, v8}, Landroid/webkit/WebClipboard;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    :goto_2
    const-string v9, "WebClipboard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getHTML FORMAT_TEXT_ID"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 346
    .end local v7           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v8           #tmp_data_str:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x3

    if-ne v1, v9, :cond_4

    .line 347
    const/4 v6, 0x0

    .line 348
    .local v6, paste:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "pasteClipBoardData FORMAT_BITMAP_ID "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v0

    .line 349
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 351
    .local v5, imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/webkit/WebClipboard;->giveFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, fileUrl:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pasteClipBoardData fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 355
    move-object v6, v3

    .line 356
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pasteClipBoardData paste fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, v6}, Landroid/webkit/WebClipboard;->makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    goto/16 :goto_0

    .line 362
    .end local v3           #fileUrl:Ljava/lang/String;
    .end local v5           #imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v6           #paste:Ljava/lang/String;
    :cond_4
    const-string v9, ""

    goto/16 :goto_1
.end method

.method public getHTMLForCheckingSize()Ljava/lang/String;
    .locals 13

    .prologue
    .line 372
    iget-object v10, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v11, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 375
    .local v0, data:Landroid/sec/clipboard/data/ClipboardData;
    const/4 v1, -0x1

    .line 377
    .local v1, dataFormat:I
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    .line 381
    :cond_0
    const/4 v10, 0x4

    if-ne v1, v10, :cond_1

    move-object v5, v0

    .line 382
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 383
    .local v5, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .end local v5           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    .local v2, data_str:Ljava/lang/String;
    :goto_0
    const-string v10, "ClipboardEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTML:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v2           #data_str:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 384
    :cond_1
    const/4 v10, 0x2

    if-ne v1, v10, :cond_3

    .line 385
    const-string v10, "WebClipboard"

    const-string v11, "getHTMLForCheckingSize FORMAT_TEXT_ID"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    .line 386
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 387
    .local v8, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 388
    .local v9, tmp_data_str:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 389
    invoke-direct {p0, v9}, Landroid/webkit/WebClipboard;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 393
    .restart local v2       #data_str:Ljava/lang/String;
    :goto_2
    const-string v10, "WebClipboard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTMLForCheckingSize FORMAT_TEXT_ID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    .end local v2           #data_str:Ljava/lang/String;
    :cond_2
    const-string v2, ""

    .restart local v2       #data_str:Ljava/lang/String;
    goto :goto_2

    .line 394
    .end local v2           #data_str:Ljava/lang/String;
    .end local v8           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v9           #tmp_data_str:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x3

    if-ne v1, v10, :cond_4

    .line 395
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "getHTML bitmap "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v6, v0

    .line 396
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 399
    .local v6, imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, filePath:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v7, mFile:Ljava/io/File;
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, fileUrl:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<img src="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " />"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    .restart local v2       #data_str:Ljava/lang/String;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTML bitmap = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    .end local v2           #data_str:Ljava/lang/String;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #fileUrl:Ljava/lang/String;
    .end local v6           #imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v7           #mFile:Ljava/io/File;
    :cond_4
    const-string v2, ""

    goto/16 :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 304
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 306
    .local v0, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initWebClipboard()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    return v0
.end method

.method public launchClipboardUI()V
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    .line 471
    return-void
.end method

.method public setDataToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "format"
    .parameter "data"

    .prologue
    .line 283
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setDataToClipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    :try_start_0
    const-string v1, "TEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    invoke-virtual {p0, p2}, Landroid/webkit/WebClipboard;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataToClipboard: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "HTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {p0, p2}, Landroid/webkit/WebClipboard;->setHTML(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 4
    .parameter "charSeq"

    .prologue
    .line 419
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 420
    .local v0, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    .line 421
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 422
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHTML:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V
    .locals 0
    .parameter "pasteListener"

    .prologue
    .line 271
    iput-object p1, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    .line 272
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .parameter "charSeq"

    .prologue
    .line 315
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 316
    .local v0, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 317
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 318
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .locals 0
    .parameter "viewWidth"

    .prologue
    .line 699
    iput p1, p0, Landroid/webkit/WebClipboard;->mViewWidth:I

    .line 700
    return-void
.end method

.method public updateClipboardUI()V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 475
    return-void
.end method
