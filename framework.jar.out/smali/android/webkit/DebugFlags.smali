.class Landroid/webkit/DebugFlags;
.super Ljava/lang/Object;
.source "DebugFlags.java"


# static fields
.field public static final BROWSER_FRAME:Z = true

.field public static final CACHE_MANAGER:Z = false

.field public static final CALLBACK_PROXY:Z = true

.field public static CHANNEL_SCROLL_ENABLE:Z = false

.field public static final COOKIE_MANAGER:Z = false

.field public static final COOKIE_SYNC_MANAGER:Z = false

.field static final DEBUG_MAGNIFIER:I = 0x2

.field static final DEBUG_SELECTION:I = 0x1

#the value of this static final field might be set in the static constructor
.field static final DEBUG_SETTING:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final ENABLE_DRAG:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final ENABLE_SAMSUNG_SELECTION:I = 0x0

.field public static ENABLE_TOUCH_PERFORMANCE_PATCH:Z = false

.field public static final FRAME_LOADER:Z = false

.field public static final J_WEB_CORE_JAVA_BRIDGE:Z = false

.field public static final LOAD_LISTENER:Z = false

.field public static final MEASURE_PAGE_SWAP_FPS:Z = false

.field public static final NETWORK:Z = false

.field public static final SSL_ERROR_HANDLER:Z = false

.field public static final STREAM_LOADER:Z = false

.field public static final URL_UTIL:Z = false

#the value of this static final field might be set in the static constructor
.field static final USE_BITMAP_MAGNIFIER:Z = false

.field public static final WEBSETTINGS_WEBKIT:Z = true

.field public static final WEB_BACK_FORWARD_LIST:Z

.field public static final WEB_SETTINGS:Z

.field public static final WEB_SYNC_MANAGER:Z

.field public static WEB_TOUCH_LOG:Z

.field public static final WEB_VIEW:Z

.field public static final WEB_VIEW_CORE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    sput-boolean v2, Landroid/webkit/DebugFlags;->WEB_TOUCH_LOG:Z

    .line 57
    const-string v0, "1"

    const-string v3, "debug.browser.channelscroll"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/webkit/DebugFlags;->CHANNEL_SCROLL_ENABLE:Z

    .line 58
    const-string v0, "1"

    const-string v3, "debug.browser.touchperformance"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Landroid/webkit/DebugFlags;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    .line 63
    const-string/jumbo v0, "webkit.debug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/webkit/DebugFlags;->DEBUG_SETTING:I

    .line 65
    const-string/jumbo v0, "webkit.samsungselection"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/webkit/DebugFlags;->ENABLE_SAMSUNG_SELECTION:I

    .line 66
    const-string/jumbo v0, "webkit.drag"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/webkit/DebugFlags;->ENABLE_DRAG:I

    .line 67
    const-string/jumbo v0, "webkit.magnifier.usebitmap"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/webkit/DebugFlags;->USE_BITMAP_MAGNIFIER:Z

    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v0, v2

    .line 58
    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
