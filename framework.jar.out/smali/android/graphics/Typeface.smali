.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface; = null

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface; = null

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final DROID_SANS_MONO_PATH:Ljava/lang/String; = "/system/fonts/DroidSansMono.ttf"

.field public static FLIPFONT:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_ITALIC:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_MONOSPACE:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_SERIF:Landroid/graphics/Typeface; = null

.field private static final FLIP_ALL_APPS:Z = false

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field public static final FlipFontAppList:[Ljava/lang/String; = null

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static FlipFontPathMonospace:Ljava/lang/String; = null

.field private static FlipFontPathSerif:Ljava/lang/String; = null

.field public static final ITALIC:I = 0x2

.field private static final LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/"

.field public static final MONOSPACE:Landroid/graphics/Typeface; = null

.field private static final MONOSPACE_INDEX:I = 0x3

.field private static final MONOSPACE_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/monospace.loc"

.field public static final NORMAL:I = 0x0

.field private static final SANS_INDEX:I = 0x1

.field private static final SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field public static final SANS_SERIF:Landroid/graphics/Typeface; = null

.field public static final SERIF:Landroid/graphics/Typeface; = null

.field private static final SERIF_INDEX:I = 0x2

.field private static final SERIF_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/serif.loc"

.field private static final TAG:Ljava/lang/String; = "Monotype"

.field private static UIFontBoldPath:Ljava/lang/String; = null

.field private static UIFontPath:Ljava/lang/String; = null

.field private static final UI_FONT_BOLD_PATH:Ljava/lang/String; = "/system/fonts/UIBoldFont.ttf"

.field private static final UI_FONT_PATH:Ljava/lang/String; = "/system/fonts/UIFont.ttf"

.field private static lastAppInList:Z

.field private static lastAppNameString:Ljava/lang/String;

.field static sDefaults:[Landroid/graphics/Typeface;


# instance fields
.field native_instance:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 57
    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 58
    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 59
    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 60
    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 61
    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_SERIF:Landroid/graphics/Typeface;

    .line 62
    sput-object v1, Landroid/graphics/Typeface;->FLIPFONT_MONOSPACE:Landroid/graphics/Typeface;

    .line 98
    sput-object v1, Landroid/graphics/Typeface;->lastAppNameString:Ljava/lang/String;

    .line 99
    sput-boolean v4, Landroid/graphics/Typeface;->lastAppInList:Z

    .line 102
    sput-object v1, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 103
    sput-object v1, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 105
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android"

    aput-object v2, v0, v4

    const-string v2, "com.monotype.wfall"

    aput-object v2, v0, v5

    const-string v2, "com.android.apps.tag"

    aput-object v2, v0, v6

    const-string v2, "com.android.bluetooth"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "com.android.calculator2"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "com.android.camera"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "com.android.certinstaller"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "com.android.contacts"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "com.android.deskclock"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "com.android.development"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "com.android.email"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "com.android.inputmethod.latin"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "com.android.inputmethod.pinyin"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "com.android.launcher"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "com.android.launcher2"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "com.android.mms"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "com.android.music"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "com.android.musicvis"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "com.android.nfc3"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "com.android.packageinstaller"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "com.android.phone"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "com.android.protips"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "com.android.providers.applications"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "com.android.providers.calendar"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "com.android.providers.contacts"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "com.android.providers.downloads"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "com.android.providers.downloads.ui"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "com.android.providers.drm"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "com.android.providers.media"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "com.android.providers.settings"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "com.android.providers.subscribedfeeds"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "com.android.providers.telephony"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "com.android.providers.userdictionary"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "com.android.provision"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "com.android.quicksearchbox"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "com.android.server.vpn"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "com.android.settings"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "com.android.smspush"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "com.android.soundrecorder"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "com.android.spare_parts"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "com.android.systemui"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "com.android.voicedialer"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "com.android.wallpaper"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "com.android.wallpaper.livepicker"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "com.cooliris.media"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string/jumbo v3, "jp.co.omronsoft.openwnn"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "com.example.helloandroid"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string v3, "com.monotype.test"

    aput-object v3, v0, v2

    sput-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    move-object v0, v1

    .line 436
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 437
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 438
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 439
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 440
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 442
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 448
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "ni"

    .prologue
    .line 428
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 429
    if-nez p1, :cond_0

    .line 430
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_0
    iput p1, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 433
    return-void
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 3
    .parameter "family"
    .parameter "style"

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, ni:I
    if-eqz p0, :cond_0

    .line 382
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 384
    :cond_0
    new-instance v1, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v1
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .parameter "familyName"
    .parameter "style"

    .prologue
    .line 364
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "mgr"
    .parameter "path"

    .prologue
    .line 404
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "path"

    .prologue
    .line 414
    new-instance v0, Landroid/graphics/Typeface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "path"

    .prologue
    .line 424
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .parameter "style"

    .prologue
    .line 394
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getFontPathFlipFont(I)Ljava/lang/String;
    .locals 10
    .parameter "typefaceIndex"

    .prologue
    .line 210
    packed-switch p0, :pswitch_data_0

    .line 221
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v5, file:Ljava/io/File;
    :goto_0
    const/4 v6, 0x0

    .line 227
    .local v6, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 228
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 229
    .local v2, dis:Ljava/io/DataInputStream;
    const/4 v8, 0x0

    .line 232
    .local v8, string:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 235
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 236
    .end local v2           #dis:Ljava/io/DataInputStream;
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 240
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 241
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 249
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :goto_1
    return-object v8

    .line 212
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v8           #string:Ljava/lang/String;
    :pswitch_0
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v5       #file:Ljava/io/File;
    goto :goto_0

    .line 215
    .end local v5           #file:Ljava/io/File;
    :pswitch_1
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/data/com.android.settings/app_fonts/serif.loc"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v5       #file:Ljava/io/File;
    goto :goto_0

    .line 218
    .end local v5           #file:Ljava/io/File;
    :pswitch_2
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/data/com.android.settings/app_fonts/monospace.loc"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v5       #file:Ljava/io/File;
    goto :goto_0

    .line 242
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #string:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 243
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v8, ""

    .line 247
    goto :goto_1

    .line 244
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 245
    .local v4, e:Ljava/io/IOException;
    :goto_3
    const-string v8, ""

    .line 246
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 244
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 242
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTypefaceFlipFont(Ljava/lang/String;II)Landroid/graphics/Typeface;
    .locals 3
    .parameter "appNameString"
    .parameter "typefaceIndex"
    .parameter "style"

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 171
    .local v1, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object v2, v1

    .line 203
    :goto_1
    return-object v2

    .line 173
    :pswitch_1
    invoke-static {}, Landroid/graphics/Typeface;->setTypefaceFlipFont()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v2, 0x0

    goto :goto_1

    .line 176
    :cond_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 179
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 180
    goto :goto_0

    .line 183
    :pswitch_3
    sget-object v1, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 184
    goto :goto_0

    .line 187
    :pswitch_4
    sget-object v1, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 188
    goto :goto_0

    .line 191
    :pswitch_5
    sget-object v1, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 176
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromFile(Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromTypeface(II)I
.end method

.method private static native nativeGetStyle(I)I
.end method

.method private static native nativeUnref(I)V
.end method

.method public static native setGammaForText(FF)V
.end method

.method private static setTypefaceFlipFont()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 288
    const-string v1, ""

    .line 289
    .local v1, strFontPathBold:Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Typeface;->getFontPathFlipFont(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, strFontPath:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    :cond_0
    const-string v0, ""

    .line 295
    const-string v1, ""

    .line 304
    :goto_0
    sget-object v2, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    :goto_1
    return-object v0

    .line 298
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "DroidSans-Bold.ttf"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "DroidSans.ttf"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 311
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v2, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 312
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v2, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    move-object v2, v3

    .line 313
    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 314
    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 327
    :goto_2
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    aput-object v4, v2, v3

    .line 328
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    aput-object v3, v2, v5

    .line 329
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    aput-object v3, v2, v6

    .line 330
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v3, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    aput-object v3, v2, v7

    .line 332
    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    goto :goto_1

    .line 320
    :cond_3
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 321
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 322
    sget-object v2, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 323
    sget-object v2, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Landroid/graphics/Typeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 324
    sget-object v2, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    sput-object v2, Landroid/graphics/Typeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    goto :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 451
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 452
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 453
    return-void
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v0

    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
