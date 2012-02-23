.class public Landroid/webkit/WebViewCore$EventHub;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHub"
.end annotation


# static fields
.field static final ADD_JS_INTERFACE:I = 0x8a

.field static final ADD_PACKAGE_NAME:I = 0xb9

.field static final ADD_PACKAGE_NAMES:I = 0xb8

.field static final ADVANCE_TEXT_SELECTION_ALL:I = 0xd8

.field static final AUTOFILL_FORM:I = 0xc0

.field static final CAN_REDO:I = 0x20f

.field static final CAN_UNDO:I = 0x20d

.field static final CHECK_END_OF_WORD_AT_POSITION:I = 0x224

.field static final CHECK_SELECTED_CLOSEST_WORD:I = 0x223

.field static final CHECK_SELECTION_AT_BOUNDRY:I = 0x217

.field static final CLEAR_CACHE:I = 0x6f

.field static final CLEAR_CONTENT:I = 0x86

.field static final CLEAR_HISTORY:I = 0x70

.field static final CLEAR_REDO_UNDO:I = 0x211

.field static final CLEAR_SSL_PREF_TABLE:I = 0x96

.field static final CLEAR_TEXT_SELECTION:I = 0xd3

.field static final CLICK:I = 0x76

.field static final CLOSEST_WORD_SELECTION:I = 0xd4

.field static final CONTENT_INVALIDATE_ALL:I = 0xaf

.field static final CONTENT_SELECTION_TYPE:I = 0x213

.field static final COPY_BEGIN_EXTEND_SELECTION:I = 0xd5

.field static final COPY_MOVE_SELECTION:I = 0xd2

.field static final COPY_SAVE_IMAGE:I = 0x204

.field static final DELETE_SELECTION:I = 0x7a

.field static final DELETE_SURROUNDING_TEXT:I = 0x1ff

.field static final DELKEY_SIML_FOR_COUNT:I = 0x1fc

.field private static final DESTROY:I = 0xc8

.field static final DOC_HAS_IMAGES:I = 0x78

.field static final DRAW_SELECTION:I = 0x205

.field static final DUMP_DOMTREE:I = 0xaa

.field static final DUMP_NAVTREE:I = 0xac

.field static final DUMP_RENDERTREE:I = 0xab

.field static final DUMP_V8COUNTERS:I = 0xad

.field static final EXECUTE_JS:I = 0xc2

.field static final EXEC_COMMAND:I = 0x203

.field static final FAKE_CLICK:I = 0x79

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x60

.field static final FREE_MEMORY:I = 0x91

.field static final GEOLOCATION_PERMISSIONS_PROVIDE:I = 0xb4

.field static final GET_BODY_EMPTY:I = 0x212

.field static final GET_BODY_HTML:I = 0x200

.field static final GET_BODY_PLAIN_TEXT:I = 0x202

.field static final GET_CARET_RECT:I = 0x209

.field static final GET_CURRENT_FONTSIZE:I = 0x222

.field static final GET_EMAIL_MARKUP:I = 0x206

.field static final GET_SELECTION_NONE:I = 0x20c

.field static final GET_SLECTION_OFFSET:I = 0x201

.field static final GET_SLECTION_OFFSET_IMAGE:I = 0x21d

.field static final GET_STATE_IN_RICHLY_EDITABLE:I = 0x21e

.field static final GET_TEXT_AROUND_CURSOR:I = 0x1fd

.field static final GET_TOUCH_HIGHLIGHT_RECTS:I = 0xbb

.field static final GO_BACK_FORWARD:I = 0x6a

.field static final HIDE_FULLSCREEN:I = 0xb6

.field static final INSERT_IMAGE_CONTENT:I = 0x220

.field static final INSERT_TEXT_CONTENT:I = 0x218

.field static final KEY_DOWN:I = 0x67

.field static final KEY_UP:I = 0x68

.field private static final LAST_PACKAGE_MSG_ID:I = 0x92

.field static final LISTBOX_CHOICES:I = 0x7b

.field static final LOAD_DATA:I = 0x8b

.field static final LOAD_URL:I = 0x64

.field public static final MESSAGE_RELAY:I = 0x7d

.field static final MODIFY_SELECTION:I = 0xbe

.field static final MOVE_SINGLE_CURSOR_HANDLER:I = 0x21c

.field static final NOTIFY_ANIMATION_STARTED:I = 0xc4

.field static final ON_PAUSE:I = 0x8f

.field static final ON_RESUME:I = 0x90

.field static final PASS_TO_JS:I = 0x73

.field static final PAUSE_TIMERS:I = 0x6d

.field static final PLUGIN_SURFACE_READY:I = 0xc3

.field static final POPULATE_VISITED_LINKS:I = 0xb5

.field static final POST_URL:I = 0x84

.field static final PROXY_CHANGED:I = 0xc1

.field static final RELOAD:I = 0x66

.field static final REMOVE_JS_INTERFACE:I = 0x95

.field static final REMOVE_PACKAGE_NAME:I = 0xba

.field static final REPLACE_TEXT:I = 0x72

.field static final REQUEST_CURSOR_HREF:I = 0x89

.field static final REQUEST_DOC_AS_TEXT:I = 0xa1

.field static final REQUEST_EXT_REPRESENTATION:I = 0xa0

.field static final REQUEST_LABEL:I = 0x61

.field static final RESIZE_IMAGE:I = 0x221

.field static final RESTORE_SELECTION:I = 0x214

.field static final RESTORE_STATE:I = 0x6c

.field static final RESUME_TIMERS:I = 0x6e

.field static final REVEAL_SELECTION:I = 0x60

.field static final SAVE_DOCUMENT_STATE:I = 0x80

.field static final SAVE_SELECTION:I = 0x215

.field static final SAVE_WEBARCHIVE:I = 0x93

.field static final SCROLL_TEXT_INPUT:I = 0x63

.field static final SET_ACTIVE:I = 0x8e

.field static final SET_BACKGROUND_COLOR:I = 0x7e

.field static final SET_COMPOSING_SELECTION:I = 0x21b

.field static final SET_COMPOSING_SELECTION_NONE:I = 0x219

.field static final SET_EDITABLE:I = 0x207

.field static final SET_GLOBAL_BOUNDS:I = 0x74

.field static final SET_JS_FLAGS:I = 0xae

.field static final SET_LOADED_FLAG:I = 0xda

.field static final SET_MOVE_FOCUS:I = 0x7f

.field static final SET_MOVE_MOUSE:I = 0x87

.field static final SET_MOVE_MOUSE_IF_LATEST:I = 0x88

.field static final SET_NETWORK_STATE:I = 0x77

.field static final SET_NETWORK_TYPE:I = 0xb7

.field static final SET_READABILITY_FLAG:I = 0xd9

.field static final SET_SCROLL_OFFSET:I = 0x6b

.field static final SET_SELECTION:I = 0x71

.field static final SET_SELECTION_FOR_EDITING:I = 0x1fe

.field static final SET_SELECTION_NONE:I = 0x20b

.field static final SHOW_ACTION_BAR:I = 0x21f

.field static final SINGLE_LISTBOX_CHOICE:I = 0x7c

.field static final SPLIT_PICTURE_SET:I = 0x85

.field static final STOP_LOADING:I = 0x65

.field static final TOUCH_EVENT:I = 0x8d

.field static final TOUCH_UP:I = 0x8c

.field static final UNMARK_WORD:I = 0xf0

.field static final UPDATE_CACHE_AND_TEXT_ENTRY:I = 0x75

.field static final UPDATE_FRAME_CACHE_IF_LOADING:I = 0x62

.field static final UPDATE_IM_SELECTION:I = 0x21a

.field static final USE_MOCK_DEVICE_ORIENTATION:I = 0xbf

.field static final VALID_NODE_BOUNDS:I = 0x92

.field static final VIEW_SIZE_CHANGED:I = 0x69

.field static final WEBKIT_DRAW:I = 0x82

.field static final WEBKIT_DRAW_LAYERS:I = 0x94


# instance fields
.field private mBlockMessages:Z

.field private mDestroying:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedPriority:I

.field private mTid:I

.field final synthetic this$0:Landroid/webkit/WebViewCore;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 1
    .parameter

    .prologue
    .line 1371
    iput-object p1, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    .line 1371
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;)V

    return-void
.end method

.method static synthetic access$12000(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1180
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method static synthetic access$12300(Landroid/webkit/WebViewCore$EventHub;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$12400(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1180
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->removeMessages()V

    return-void
.end method

.method static synthetic access$12500(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1180
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->blockMessages()V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebViewCore$EventHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1180
    invoke-direct {p0}, Landroid/webkit/WebViewCore$EventHub;->transferMessages()V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewCore$EventHub;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1180
    iget v0, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    return v0
.end method

.method static synthetic access$2702(Landroid/webkit/WebViewCore$EventHub;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1180
    iput p1, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    return p1
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewCore$EventHub;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1180
    iget v0, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/WebViewCore$EventHub;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1180
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z

    return v0
.end method

.method static synthetic access$802(Landroid/webkit/WebViewCore$EventHub;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1180
    iput-boolean p1, p0, Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z

    return p1
.end method

.method private declared-synchronized blockMessages()V
    .locals 1

    .prologue
    .line 2452
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2453
    monitor-exit p0

    return-void

    .line 2452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages()V
    .locals 2

    .prologue
    .line 2439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$11902(Landroid/webkit/WebViewCore;Z)Z

    .line 2440
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore;->access$10202(Landroid/webkit/WebViewCore;Z)Z

    .line 2441
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2442
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2446
    :goto_0
    monitor-exit p0

    return-void

    .line 2444
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeMessages(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 2397
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2411
    :goto_0
    monitor-exit p0

    return-void

    .line 2400
    :cond_0
    const/16 v1, 0x82

    if-ne p1, v1, :cond_1

    .line 2401
    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebViewCore$EventHub;->this$0:Landroid/webkit/WebViewCore;

    const/4 v2, 0x0

    #setter for: Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore;->access$11902(Landroid/webkit/WebViewCore;Z)Z

    .line 2403
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2404
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventHub.removeMessages(int what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "before the WebViewCore is set up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 2407
    .local v0, throwable:Ljava/lang/Throwable;
    const-string/jumbo v1, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2397
    .end local v0           #throwable:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 2409
    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2386
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2394
    :goto_0
    monitor-exit p0

    return-void

    .line 2389
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2390
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2392
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2424
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2432
    :goto_0
    monitor-exit p0

    return-void

    .line 2427
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2428
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2424
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2430
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 2414
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore$EventHub;->mBlockMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2418
    :goto_0
    monitor-exit p0

    return-void

    .line 2417
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private transferMessages()V
    .locals 4

    .prologue
    .line 1380
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    .line 1381
    iget v2, p0, Landroid/webkit/WebViewCore$EventHub;->mTid:I

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore$EventHub;->mSavedPriority:I

    .line 1383
    new-instance v2, Landroid/webkit/WebViewCore$EventHub$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebViewCore$EventHub$1;-><init>(Landroid/webkit/WebViewCore$EventHub;)V

    iput-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    .line 2373
    monitor-enter p0

    .line 2374
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2375
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2376
    iget-object v3, p0, Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2378
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebViewCore$EventHub;->mMessages:Ljava/util/ArrayList;

    .line 2379
    monitor-exit p0

    .line 2380
    return-void

    .line 2379
    .end local v0           #i:I
    .end local v1           #size:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
