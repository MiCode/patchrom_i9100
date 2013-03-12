.class Landroid/webkit/WebDragHandler;
.super Ljava/lang/Object;
.source "WebDragHandler.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebDragHandler$MyDragShadowBuilder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "WebDragHandler"

.field private static final TYPE_HTML:I = 0x2

.field private static final TYPE_IMAGE:I = 0x3

.field private static final TYPE_TEXT:I = 0x1

.field private static mBitmap:Landroid/graphics/Bitmap;

.field private static mInstance:Landroid/webkit/WebDragHandler;

.field private static mPicture:Landroid/graphics/Picture;

.field private static mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Landroid/webkit/WebDragHandler;->mType:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 23
    sget v0, Landroid/webkit/WebDragHandler;->mType:I

    return v0
.end method

.method static synthetic access$100()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/webkit/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/webkit/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    return-object v0
.end method

.method static getInstance()Landroid/webkit/WebDragHandler;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/webkit/WebDragHandler;->mInstance:Landroid/webkit/WebDragHandler;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/webkit/WebDragHandler;

    invoke-direct {v0}, Landroid/webkit/WebDragHandler;-><init>()V

    sput-object v0, Landroid/webkit/WebDragHandler;->mInstance:Landroid/webkit/WebDragHandler;

    .line 42
    :cond_0
    sget-object v0, Landroid/webkit/WebDragHandler;->mInstance:Landroid/webkit/WebDragHandler;

    return-object v0
.end method

.method static startDragSelection(Landroid/webkit/WebViewClassic;)V
    .locals 6
    .parameter "webView"

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, copyString:Ljava/lang/String;
    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 49
    .local v1, dragData:Landroid/content/ClipData;
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v4}, Landroid/webkit/WebTextSelectionControls;->getSelectionPicture(Landroid/graphics/Region;)Landroid/graphics/Picture;

    move-result-object v3

    sput-object v3, Landroid/webkit/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    .line 50
    const/4 v3, 0x1

    sput v3, Landroid/webkit/WebDragHandler;->mType:I

    .line 52
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 53
    .local v2, view:Landroid/view/View;
    new-instance v3, Landroid/webkit/WebDragHandler$MyDragShadowBuilder;

    invoke-direct {v3, v2}, Landroid/webkit/WebDragHandler$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    const-string v3, "WebDragHandler"

    const-string v4, "startDragSelection: starDrag failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    return-void
.end method

.method static startDragSelection(Landroid/webkit/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "webView"
    .parameter "url"
    .parameter "path"

    .prologue
    .line 63
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 65
    .local v0, dragData:Landroid/content/ClipData;
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    sget-object v2, Landroid/webkit/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 67
    const-string v2, "WebDragHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDragSelection: Failed to decode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    const/4 v2, 0x3

    sput v2, Landroid/webkit/WebDragHandler;->mType:I

    .line 71
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 72
    .local v1, view:Landroid/view/View;
    new-instance v2, Landroid/webkit/WebDragHandler$MyDragShadowBuilder;

    invoke-direct {v2, v1}, Landroid/webkit/WebDragHandler$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const-string v2, "WebDragHandler"

    const-string v3, "startDragSelection: starDrag failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 117
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 124
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 120
    :pswitch_0
    sput-object v1, Landroid/webkit/WebDragHandler;->mPicture:Landroid/graphics/Picture;

    .line 121
    sput-object v1, Landroid/webkit/WebDragHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 122
    const/4 v1, 0x1

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
