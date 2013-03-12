.class public Landroid/sec/clipboard/data/ClipboardDefine;
.super Ljava/lang/Object;
.source "ClipboardDefine.java"


# static fields
.field public static final CLIPBOARD_TAG:Ljava/lang/String; = "ClipboardServiceEx"

.field public static DEBUG:Z = false

.field public static DEFAULT_PATH:Ljava/lang/String; = null

.field public static final FORMAT_ALL_ID:I = 0x1

.field public static final FORMAT_BITMAP:Ljava/lang/String; = "Bitmap"

.field public static final FORMAT_BITMAP_ID:I = 0x3

.field public static final FORMAT_HTML_FLAGMENT:Ljava/lang/String; = "HTMLFlagment"

.field public static final FORMAT_HTML_FLAGMENT_ID:I = 0x4

.field public static final FORMAT_INTENT:Ljava/lang/String; = "Intent"

.field public static final FORMAT_INTENT_ID:I = 0x6

.field public static final FORMAT_TEXT:Ljava/lang/String; = "Text"

.field public static final FORMAT_TEXT_ID:I = 0x2

.field public static final FORMAT_URI:Ljava/lang/String; = "Uri"

.field public static final FORMAT_URI_ID:I = 0x5

.field public static INFO_DEBUG:Z = false

.field public static final MAX_DATA_COUNT:I = 0x14

.field public static THUMBNAIL_SUFFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, ""

    sput-object v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEFAULT_PATH:Ljava/lang/String;

    .line 81
    const-string v0, "_thum.jpg"

    sput-object v0, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
