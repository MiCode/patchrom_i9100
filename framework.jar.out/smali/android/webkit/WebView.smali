.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$PrivateAccess;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$FindListener;,
        Landroid/webkit/WebView$WebViewTransport;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "webview_proxy"

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"


# instance fields
.field private mProvider:Landroid/webkit/WebViewProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 448
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 457
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 458
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 469
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .parameter "privateBrowsing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p4, javaScriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 506
    if-nez p1, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 511
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 512
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p4, p5}, Landroid/webkit/WebViewProvider;->init(Ljava/util/Map;Z)V

    .line 513
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    .line 482
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 483
    return-void
.end method

.method static synthetic access$001(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 265
    invoke-super {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method static synthetic access$1001(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$101(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/WebView;IIIIIIIIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 265
    invoke-virtual/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 265
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 265
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    iput p1, p0, Landroid/webkit/WebView;->mScrollX:I

    return p1
.end method

.method static synthetic access$1902(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    iput p1, p0, Landroid/webkit/WebView;->mScrollY:I

    return p1
.end method

.method static synthetic access$201(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 265
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method static synthetic access$301(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$401(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$501(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 265
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Landroid/webkit/WebView;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 265
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$701(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$801(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$901(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private static checkThread()V
    .locals 3

    .prologue
    .line 1893
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1894
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All WebView methods must be called on the UI thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Future versions of WebView may not support use on other threads."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 1899
    .local v0, throwable:Ljava/lang/Throwable;
    const-string/jumbo v1, "webview_proxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    .line 1902
    :cond_0
    return-void
.end method

.method public static disablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 669
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 670
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/WebViewFactoryProvider$Statics;->setPlatformNotificationsEnabled(Z)V

    .line 671
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 657
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 658
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkit/WebViewFactoryProvider$Statics;->setPlatformNotificationsEnabled(Z)V

    .line 659
    return-void
.end method

.method private ensureProviderCreated()V
    .locals 2

    .prologue
    .line 1877
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1878
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    if-nez v0, :cond_0

    .line 1881
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView$PrivateAccess;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$PrivateAccess;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v0, p0, v1}, Landroid/webkit/WebViewFactoryProvider;->createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    .line 1883
    :cond_0
    return-void
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 1394
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1395
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getFactory()Landroid/webkit/WebViewFactoryProvider;
    .locals 2

    .prologue
    .line 1888
    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1889
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1888
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1534
    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1535
    new-instance v0, Landroid/webkit/PluginList;

    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1534
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "name"

    .prologue
    .line 1497
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1498
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1499
    return-void
.end method

.method public applyreadability(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1681
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1682
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->applyreadability(Ljava/lang/String;)V

    .line 1683
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 904
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 905
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .parameter "steps"

    .prologue
    .line 942
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 943
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 922
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 923
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .locals 1

    .prologue
    .line 1622
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1623
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    .prologue
    .line 1632
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1633
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 1008
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1009
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearActionModes()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearActionModes()V

    .line 637
    return-void
.end method

.method public clearCache(Z)V
    .locals 1
    .parameter "includeDiskFiles"

    .prologue
    .line 1254
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1255
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->clearCache(Z)V

    .line 1256
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 1263
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1264
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearFormData()V

    .line 1265
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 1271
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1272
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearHistory()V

    .line 1273
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 1403
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1404
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearMatches()V

    .line 1405
    return-void
.end method

.method public clearSelection()V
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearSelection()V

    .line 1718
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 1280
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1281
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearSslPreferences()V

    .line 1282
    return-void
.end method

.method public clearView()V
    .locals 1

    .prologue
    .line 994
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 995
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearView()V

    .line 996
    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 1951
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeScroll()V

    .line 1972
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1961
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 1293
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1294
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelectionSec()Z
    .locals 1

    .prologue
    .line 1733
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->copySelectionSec()Z

    move-result v0

    return v0
.end method

.method public debugDump()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1749
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1750
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->debugDump()V

    .line 1751
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 645
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 646
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->destroy()V

    .line 647
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2128
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1415
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1416
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->documentHasImages(Landroid/os/Message;)V

    .line 1417
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1555
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1556
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->emulateShiftHeld()V

    .line 1557
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "command"
    .parameter "value"

    .prologue
    .line 1694
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .parameter "find"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1336
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1337
    const-string v0, "findAll blocks UI: prefer findAllAsync"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAll(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .parameter "find"

    .prologue
    .line 1351
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1352
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAllAsync(Ljava/lang/String;)V

    .line 1353
    return-void
.end method

.method public findNext(Z)V
    .locals 1
    .parameter "forward"

    .prologue
    .line 1321
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1322
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findNext(Z)V

    .line 1323
    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 1594
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1595
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->flingScroll(II)V

    .line 1596
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 1243
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1244
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->freeMemory()V

    .line 1245
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 573
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 1175
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1176
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1144
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1145
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 1066
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1067
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 626
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 627
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1122
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1123
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1165
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1166
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getProgress()I

    move-result v0

    return v0
.end method

.method public getReaderArticle()Z
    .locals 1

    .prologue
    .line 1676
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1677
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getReaderArticle()Z

    move-result v0

    return v0
.end method

.method public getReaderFlag()Z
    .locals 1

    .prologue
    .line 1665
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1666
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getReaderFlag()Z

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 1018
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1019
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 1521
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1522
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1134
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1108
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1109
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 562
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebClipboard()Landroid/webkit/WebClipboard;
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkit/WebFeedLink;
    .locals 1

    .prologue
    .line 2165
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewProvider()Landroid/webkit/WebViewProvider;
    .locals 1

    .prologue
    .line 1765
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1612
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1613
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getZoomControls()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 912
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 913
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goBack()V

    .line 914
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 955
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 956
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->goBackOrForward(I)V

    .line 957
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 930
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 931
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goForward()V

    .line 932
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1043
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1044
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->invokeZoomPicker()V

    .line 1045
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 963
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 964
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 822
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 823
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 851
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 852
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/webkit/WebViewProvider;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 777
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 778
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    .line 779
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p2, additionalHttpHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 768
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 769
    return-void
.end method

.method public loadinitialJs(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1686
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1687
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->loadinitialJs(Ljava/lang/String;)V

    .line 1688
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1913
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 1914
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    .line 1915
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1566
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "p"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1575
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 2082
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2083
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 2087
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    .line 1920
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 1921
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 2072
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    .line 2073
    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2056
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 2057
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2104
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2105
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2106
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1986
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1585
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1976
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2042
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2043
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2044
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2045
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2035
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2036
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2037
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2038
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1996
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 2006
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2001
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2139
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 2140
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onMeasure(II)V

    .line 2141
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 2061
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    .line 2062
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1216
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1217
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onPause()V

    .line 1218
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1224
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1225
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onResume()V

    .line 1226
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 2122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 2123
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    .line 2124
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 2116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 2117
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    .line 2118
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1981
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1991
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 2092
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2093
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2094
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 2098
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    .line 2099
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 2100
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2066
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    .line 2067
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    .line 2068
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 541
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 542
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 551
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 552
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .parameter "bottom"

    .prologue
    .line 985
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 986
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .parameter "top"

    .prologue
    .line 974
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 975
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 1195
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1196
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->pauseTimers()V

    .line 1197
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 2049
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 790
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 791
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->postUrl(Ljava/lang/String;[B)V

    .line 792
    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1544
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1545
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 894
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 895
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->reload()V

    .line 896
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1509
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1510
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1511
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 2145
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2133
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1
    .parameter "hrefMsg"

    .prologue
    .line 1084
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1085
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 1086
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1096
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1097
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestImageRef(Landroid/os/Message;)V

    .line 1098
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .parameter "b"
    .parameter "src"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 731
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 732
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .parameter "inState"

    .prologue
    .line 751
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 752
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 1204
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1205
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->resumeTimers()V

    .line 1206
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "strUrl"
    .parameter "strPath"

    .prologue
    .line 1740
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 597
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 598
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .parameter "b"
    .parameter "dest"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 715
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 716
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .parameter "outState"

    .prologue
    .line 700
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 701
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"

    .prologue
    .line 861
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 862
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 1
    .parameter "basename"
    .parameter "autoname"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 879
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 880
    return-void
.end method

.method public selectLastTouchText()Z
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->selectLastTouchText()Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 2150
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    .line 2151
    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 580
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 581
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 582
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1438
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1439
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1440
    return-void
.end method

.method public setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1305
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1306
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    .line 1307
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2111
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 521
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 522
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setHorizontalScrollbarOverlay(Z)V

    .line 523
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 612
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 613
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .parameter "scaleInPercent"

    .prologue
    .line 1033
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1034
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setInitialScale(I)V

    .line 1035
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .parameter "layerType"
    .parameter "paint"

    .prologue
    .line 2155
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2156
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2157
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 1925
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1926
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1
    .parameter "setMap"

    .prologue
    .line 1588
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1589
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setMapTrackballToArrowKeys(Z)V

    .line 1590
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .parameter "networkUp"

    .prologue
    .line 681
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 682
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setNetworkAvailable(Z)V

    .line 683
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1930
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 1934
    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    .line 1935
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    .line 1936
    return-void
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1463
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1464
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 1465
    return-void
.end method

.method public setReaderArticle(Z)V
    .locals 1
    .parameter "isReaderArticle"

    .prologue
    .line 1671
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1672
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setReaderArticle(Z)V

    .line 1673
    return-void
.end method

.method public setReaderFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1659
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1660
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setReaderFlag(Z)V

    .line 1661
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 1940
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    .line 1941
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 1942
    return-void
.end method

.method public setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1709
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V

    .line 1710
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 531
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 532
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setVerticalScrollbarOverlay(Z)V

    .line 533
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 1450
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1451
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1452
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 1426
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1427
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1428
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2030
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "text"
    .parameter "showIme"

    .prologue
    .line 1367
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1368
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->showFindDialog(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 886
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 887
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->stopLoading()V

    .line 888
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 1642
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1643
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 1652
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1653
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomOut()Z

    move-result v0

    return v0
.end method
