.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$CursorDirection;,
        Landroid/webkit/WebView$CmdVal;,
        Landroid/webkit/WebView$InvokeListBox;,
        Landroid/webkit/WebView$PrivateHandler;,
        Landroid/webkit/WebView$TouchEventQueue;,
        Landroid/webkit/WebView$QueuedTouch;,
        Landroid/webkit/WebView$SelectionOffset;,
        Landroid/webkit/WebView$ResultTransport;,
        Landroid/webkit/WebView$RequestFormData;,
        Landroid/webkit/WebView$DateTimePicker;,
        Landroid/webkit/WebView$SingleCursorTimerTask;,
        Landroid/webkit/WebView$ViewSizeData;,
        Landroid/webkit/WebView$SaveWebArchiveMessage;,
        Landroid/webkit/WebView$PackageListener;,
        Landroid/webkit/WebView$ProxyReceiver;,
        Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;,
        Landroid/webkit/WebView$WebSelectRequest;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$OnTrimMemoryListener;,
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$InnerScrollChangedListener;,
        Landroid/webkit/WebView$InnerGlobalLayoutListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_SCRIPT_CHOOSER_JAVASCRIPT:Ljava/lang/String; = "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'https://ssl.gstatic.com/accessibility/javascript/android/AndroidScriptChooser.user.js\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_OPTED_OUT:I = 0x0

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_PROVIDED:I = 0x1

.field private static final ACCESSIBILITY_SCRIPT_INJECTION_UNDEFINED:I = -0x1

.field private static final ALIAS_ACCESSIBILITY_JS_INTERFACE:Ljava/lang/String; = "accessibility"

.field private static final ANGLE_HORIZ:F = 0.0f

.field private static final ANGLE_VERT:F = 2.0f

.field private static final ANYWHERE:I = 0x2

.field static final AUTOFILL_COMPLETE:I = 0x86

.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final AWAKEN_SCROLL_BARS:I = 0x9

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field static final DATE_DIALOG_ID:I = 0x0

.field static final DATE_TIME_DIALOG_ID:I = 0x2

.field static final DEBUG_TEXT_HANDLES:Z = false

.field private static final DEBUG_TOUCH_HIGHLIGHT:Z = false

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x3d4

.field static final DISPLAY_ACTION_BAR:I = 0x90

.field static final DOM_FOCUS_CHANGED:I = 0x7a

.field static final DO_MOTION_UP:I = 0x77

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAG_LAYER_FINGER_DISTANCE:I = 0x4e20

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x3

.field private static final DRAW_EXTRAS_FIND:I = 0x1

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x2

.field static final ENTER_FULLSCREEN_VIDEO:I = 0x89

.field static final FIND_AGAIN:I = 0x7e

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FORM_DID_BLUR:I = 0x7c

.field static final FORM_INPUT_ACTION:I = 0x8d

.field public static final FORM_INPUT_DONE:I = 0x20

.field public static final FORM_INPUT_GO:I = 0x10

.field public static final FORM_INPUT_NEXT_SELECT:I = 0x8

.field public static final FORM_INPUT_NEXT_TEXT:I = 0x4

.field public static final FORM_INPUT_NONE:I = 0x0

.field public static final FORM_INPUT_PREV_SELECT:I = 0x2

.field public static final FORM_INPUT_PREV_TEXT:I = 0x1

.field private static final FULLY_ON_SCREEN:I = 0x0

.field static final HIDE_FULLSCREEN:I = 0x79

.field private static final HIGHLIGHT_COLOR:I = 0x66ff9129

.field private static final HSLOPE_TO_BREAK_SNAP:F = 0.4f

.field private static final HSLOPE_TO_START_SNAP:F = 0.25f

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field private static final IGNORE_UNEVEN_MULTITOUCH_RELEASE_MS:J = 0x3cL

.field private static final INTERSECTS_SCREEN:I = 0x1

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field private static final LAST_PACKAGE_MSG_ID:I = 0x90

.field private static final LAST_PRIVATE_MSG_ID:I = 0xb

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field private static final LONG_PRESS_UPDATE_SELECTION_TIMEOUT:I = 0x1f4

.field private static final MAX_DURATION:I = 0x2ee

.field private static final MINIMUM_VELOCITY_RATIO_FOR_ACCELERATION:F = 0.2f

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MMA_WEIGHT_N:F = 5.0f

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field private static final NEW_SELECTION_DONE:I = 0x0

.field private static final NEW_SELECTION_REQUESTING:I = 0x1

.field private static final NEW_SELECTION_SELECTED:I = 0x2

.field static final NO_LEFTEDGE:I = -0x1

.field static final NO_TOPEDGE:I = -0x1

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field private static final PATTERN_MATCH_AXS_URL_PARAMETER:Ljava/lang/String; = "(\\?axs=(0|1))|(&axs=(0|1))"

.field private static final PREVENT_DEFAULT_IGNORE:I = 0x4

.field private static final PREVENT_DEFAULT_MAYBE_YES:I = 0x1

.field private static final PREVENT_DEFAULT_NO:I = 0x0

.field private static final PREVENT_DEFAULT_NO_FROM_TOUCH_DOWN:I = 0x2

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field private static final PREVENT_DEFAULT_YES:I = 0x3

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REPLACE_BASE_CONTENT:I = 0x7b

.field static final REQUEST_CLEAR_CURSOR:I = 0x8f

.field static final REQUEST_DATETIMEPICKERS:I = 0x91

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID:I = 0x80

.field static final REQUEST_LISTBOX:I = 0x8e

.field static final RETURN_LABEL:I = 0x7d

.field static final SAVE_WEBARCHIVE_FINISHED:I = 0x84

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final SCH_ALPHA:I = 0xff

.field private static final SCH_ALPHA_DIFF:I = 0x33

.field static final SCREEN_ON:I = 0x88

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field private static final SCROLL_BITS:I = 0x6

.field private static final SCROLL_SELECT_TEXT:I = 0xb

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field static final SELECTION_STRING_CHANGED:I = 0x82

.field static final SELECT_AT:I = 0x87

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field private static final SELECT_SCROLL:I = 0x5

.field private static final SELECT_SCROLL_INTERVAL:J = 0x10L

.field static final SET_AUTOFILLABLE:I = 0x85

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SET_TOUCH_HIGHLIGHT_RECTS:I = 0x83

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SLIDE_TITLE_DURATION:I = 0x1f4

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field private static final STD_SPEED:I = 0x1e0

.field private static final STROKE_STRENGTH:F = 4.0f

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field private static final TAP_TIMEOUT:I = 0x12c

.field static final TIME_DIALOG_ID:I = 0x1

.field private static final TOUCHX_LEFT:I = 0x50

.field private static final TOUCHX_RIGHT:I = 0x50

.field private static final TOUCHY_BOTTOM:I = 0x3c

.field private static final TOUCHY_UP:I = 0x0

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_LAYER_MODE:I = 0x9

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_HIGHLIGHT_ARC:F = 5.0f

.field private static final TOUCH_HIGHLIGHT_ELAPSE_TIME:I = 0x7d0

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x0

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UNHANDLED_NAV_KEY:I = 0x6e

.field static final UPDATE_SELECTION:I = 0x8a

.field static final UPDATE_SELECTION_MSG_ID:I = 0x8c

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_ENTRY_MSG_ID:I = 0x6a

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_ZOOM_DENSITY:I = 0x8b

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field static final USE_JAVA_TEXT_SELECTION:Z = true

.field private static USE_TOUCHOPTIMIZER:Z = false

.field static final USE_WEBKIT_RINGS:Z = false

.field private static final VSLOPE_TO_BREAK_SNAP:F = 0.95f

.field private static final VSLOPE_TO_START_SNAP:F = 1.25f

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field private static final ZOOM_BITS:I = 0x86

.field private static mInUserScroll:Z

.field private static mIncrementEGLContextHack:Z

.field static mLogEvent:Z

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sMaxViewportWidth:I

.field private static sNotificationsEnabled:Z

.field private static sPackageInstallationReceiverAdded:Z

.field private static sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;


# instance fields
.field private DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

.field public SimulateSelect:Z

.field protected bSCHvisibleonFocus:Z

.field protected bShowSingleCursorHandler:Z

.field private bWebSelectDialogIsUp:Z

.field private cnt:I

.field protected iAlpha:I

.field public imageCanbeMoved:Z

.field public imageCanbeResized:Z

.field private imageSelectRect:Landroid/graphics/Rect;

.field protected isContextMenuVisible:Z

.field public isImageSelected:Z

.field private isSCHCompletelyDrawn:Z

.field public isSelectionset:Z

.field public isTouchedImage:Z

.field private isTouchedSCH:Z

.field private mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

.field private mAccessibilityScriptInjected:Z

.field private mActionMove:Z

.field protected mActionMoveSCH:Z

.field private mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

.field private mAutoRedraw:Z

.field private mAutoScrollX:I

.field private mAutoScrollY:I

.field private mAutoSelection:Z

.field private mAverageAngle:F

.field private mBackgroundColor:I

.field private mBlockWebkitViewMessages:Z

.field private mCachedOverlappingActionModeHeight:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentVisibleRect:Landroid/graphics/Rect;

.field private mContentWidth:I

.field private mController:I

.field mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

.field private mCurrentScrollingLayerId:I

.field private mCurrentTouchInterval:I

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mDeferTouchMode:I

.field private mDeferTouchProcess:Z

.field private mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mDoubleTapSlopSquare:I

.field mDragFromTextInput:Z

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field private mDrawSelectionPointer:Z

.field private mExtendSelection:Z

.field private mExtendSelectionPressed:Z

.field private mFindCallback:Landroid/webkit/FindActionModeCallback;

.field private mFindIsUp:Z

.field private mFocusSizeChanged:Z

.field private mFocusedNodeName:Ljava/lang/String;

.field private mFocusedNodePointer:I

.field private mForwardTouchEvents:Z

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private final mGLRectViewport:Landroid/graphics/Rect;

.field private mGLViewportEmpty:Z

.field private mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mGotCenterDown:Z

.field private mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

.field private mHardwareAccelSkia:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

.field mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

.field public mImageRect:Landroid/graphics/Rect;

.field public mInActionMove:Z

.field private mInOverScrollMode:Z

.field private mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

.field private mInitialScaleInPercent:I

.field private mIsControllerSelected:Z

.field public mIsInReverse:Z

.field private mIsPaused:Z

.field protected mIsSCHExpired:Z

.field private mKeysPressed:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastActualHeightSent:I

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastDeferTouchX:F

.field private mLastDeferTouchY:F

.field private mLastFind:Ljava/lang/String;

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field private mLastHandledMultiTouchTime:J

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mListBoxMessage:Landroid/os/Message;

.field private mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

.field private mLongPress:Z

.field private mLongPressForActionPopup:Z

.field protected mMagnifier:Landroid/webkit/WebMagnifier;

.field private mMapTrackballToArrowKeys:Z

.field private mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

.field private mMaxAutoScrollX:I

.field private mMaxAutoScrollY:I

.field private mMaximumFling:I

.field private mMinAutoScrollX:I

.field private mMinAutoScrollY:I

.field protected mMoveIsStarted:Z

.field private mNativeBrowser:Z

.field protected mNativeClass:I

.field private mNavSlop:I

.field private mOrientation:I

.field private mOverScrollGlow:Landroid/webkit/OverScrollGlow;

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDistance:I

.field private mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field private mPictureUpdatePausedForFocusChange:Z

.field public mPinchZoomListener:Landroid/webkit/PinchZoomListener;

.field private mPreserveZoom:Z

.field private mPreventDefault:I

.field final mPrivateHandler:Landroid/os/Handler;

.field private mReaderFlag:Z

.field private mRequestNewSelection:I

.field protected mSCHTimer:Ljava/util/Timer;

.field protected mSCHTimerTask:Ljava/util/TimerTask;

.field private mSCH_pos_origin_cursor:Landroid/graphics/Rect;

.field private mSCH_pos_origin_handle_y:I

.field private mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

.field private final mScrollFilter:Landroid/graphics/DrawFilter;

.field private mScrollOffset:Landroid/graphics/Point;

.field mScroller:Landroid/widget/OverScroller;

.field private mScrollingLayerBounds:Landroid/graphics/Rect;

.field private mScrollingLayerRect:Landroid/graphics/Rect;

.field private mSelectCallback:Landroid/webkit/SelectActionModeCallback;

.field private mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

.field private mSelectCallbackUser:Landroid/webkit/SelectActionModeCallbackSec;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field private mSelectionStarted:Z

.field private mSendScrollEvent:Z

.field private mSentAutoScrollMessage:Z

.field private mSmartSelection:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field private mStartTouchX:I

.field private mStartTouchY:I

.field private mTextGeneration:I

.field private mTextSelectionPaint:Landroid/graphics/Paint;

.field private mTextSelectionRegion:Landroid/graphics/Region;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTitleBar:Landroid/view/View;

.field private mTitleGravity:I

.field private mTouchCrossHairColor:Landroid/graphics/Paint;

.field private final mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

.field private mTouchHighlightRegion:Landroid/graphics/Region;

.field private mTouchHighlightRequested:J

.field private mTouchHighlightX:I

.field private mTouchHighlightY:I

.field private mTouchHightlightPaint:Landroid/graphics/Paint;

.field private mTouchMode:I

.field private mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;

.field protected mTouchSelectionHandler:Z

.field private mTouchSlopSquare:I

.field private mTouchSlopSquareForFinger:I

.field private mTouchSlopSquareForSPen:I

.field private mTouchUpEvent:J

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field private mTurnOffWindowResizeAnim:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field final mViewManager:Landroid/webkit/ViewManager;

.field private final mViewRectViewport:Landroid/graphics/Rect;

.field private final mVisibleContentRect:Landroid/graphics/RectF;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWebClipboard:Landroid/webkit/WebClipboard;

.field private mWebSelectDialog:Landroid/webkit/WebSelectDialog;

.field private mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

.field private mWebSelectionOn:Z

.field private mWebTextView:Landroid/webkit/WebTextView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private mYDistanceToSlideTitleOffScreen:I

.field private final mZoomFilter:Landroid/graphics/DrawFilter;

.field private mZoomManager:Landroid/webkit/ZoomManager;

.field private schContentX:I

.field private schContentY:I

.field textWatcher:Landroid/text/TextWatcher;

.field private titleBarAnimation:Z

.field private x_lastPosition:I

.field private y_lastPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 431
    sput-boolean v3, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 869
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "SWITCH_TO_SHORTPRESS"

    aput-object v1, v0, v5

    const-string v1, "SWITCH_TO_LONGPRESS"

    aput-object v1, v0, v6

    const-string v1, "RELEASE_SINGLE_TAP"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "REQUEST_FORM_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESUME_WEBCORE_PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DRAG_HELD_MOTIONLESS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AWAKEN_SCROLL_BARS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SCROLL_SELECT_TEXT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 883
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCROLL_TO_MSG_ID"

    aput-object v1, v0, v3

    const-string v1, "102"

    aput-object v1, v0, v4

    const-string v1, "103"

    aput-object v1, v0, v5

    const-string v1, "104"

    aput-object v1, v0, v6

    const-string v1, "NEW_PICTURE_MSG_ID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UPDATE_ZOOM_RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "UNHANDLED_NAV_KEY"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHOW_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LONG_PRESS_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REQUEST_KEYBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DO_MOTION_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIDE_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DOM_FOCUS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "REPLACE_BASE_CONTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "FORM_DID_BLUR"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RETURN_LABEL"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FIND_AGAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CENTER_FIT_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SET_SCROLLBAR_MODES"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SELECTION_STRING_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SET_TOUCH_HIGHLIGHT_RECTS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SAVE_WEBARCHIVE_FINISHED"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SET_AUTOFILLABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "AUTOFILL_COMPLETE"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SELECT_AT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "SCREEN_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ENTER_FULLSCREEN_VIDEO"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "UPDATE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "UPDATE_ZOOM_DENSITY"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "FORM_INPUT_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "REQUEST_LISTBOX"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "REQUEST_CLEAR_CURSOR"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "DISPLAY_ACTION_BAR"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "REQUEST_DATETIMEPICKERS"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 942
    const/16 v0, 0x3d4

    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 1018
    sput-boolean v4, Landroid/webkit/WebView;->mLogEvent:Z

    .line 1025
    sput-boolean v4, Landroid/webkit/WebView;->sNotificationsEnabled:Z

    .line 1053
    sput-boolean v3, Landroid/webkit/WebView;->mIncrementEGLContextHack:Z

    .line 1200
    sput-boolean v3, Landroid/webkit/WebView;->USE_TOUCHOPTIMIZER:Z

    .line 1416
    sput-boolean v3, Landroid/webkit/WebView;->sPackageInstallationReceiverAdded:Z

    .line 1425
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->sGoogleApps:Ljava/util/Set;

    .line 1426
    sget-object v0, Landroid/webkit/WebView;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1427
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1217
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1249
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 1250
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 9
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
    .local p4, javaScriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1277
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 375
    iput-boolean v5, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 404
    iput-object v2, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    .line 407
    iput-object v2, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    .line 410
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTurnOffWindowResizeAnim:Z

    .line 423
    iput-boolean v5, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    .line 424
    iput-object v2, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 429
    iput-boolean v5, p0, Landroid/webkit/WebView;->mReaderFlag:Z

    .line 434
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    .line 435
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    .line 436
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    .line 437
    iput-boolean v5, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    .line 443
    iput-boolean v5, p0, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    .line 444
    iput-boolean v5, p0, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 445
    iput-boolean v5, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    .line 446
    iput-boolean v5, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 447
    iput-boolean v5, p0, Landroid/webkit/WebView;->mMoveIsStarted:Z

    .line 448
    iput-boolean v5, p0, Landroid/webkit/WebView;->bSCHvisibleonFocus:Z

    .line 455
    iput v5, p0, Landroid/webkit/WebView;->x_lastPosition:I

    .line 456
    iput v5, p0, Landroid/webkit/WebView;->y_lastPosition:I

    .line 457
    iput-boolean v5, p0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    .line 459
    iput-boolean v5, p0, Landroid/webkit/WebView;->isTouchedImage:Z

    .line 460
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mImageRect:Landroid/graphics/Rect;

    .line 461
    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsInReverse:Z

    .line 462
    iput-boolean v6, p0, Landroid/webkit/WebView;->mIsSCHExpired:Z

    .line 463
    new-instance v0, Ljava/util/Timer;

    const-string v1, "SCHTimer"

    invoke-direct {v0, v1, v6}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Landroid/webkit/WebView;->mSCHTimer:Ljava/util/Timer;

    .line 464
    new-instance v0, Landroid/webkit/WebView$SingleCursorTimerTask;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$SingleCursorTimerTask;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 466
    iput-boolean v5, p0, Landroid/webkit/WebView;->mLongPressForActionPopup:Z

    .line 540
    new-instance v0, Landroid/webkit/WebView$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$PrivateHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 554
    iput-object v2, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    .line 594
    iput v5, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 607
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    .line 616
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 629
    iput-boolean v5, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    .line 640
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 651
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    .line 660
    iput-boolean v6, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 720
    iput-boolean v6, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 721
    iput-boolean v5, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 734
    iput-boolean v5, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 755
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    .line 768
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    .line 788
    iput-boolean v5, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    .line 791
    iput-boolean v5, p0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    .line 945
    iput v5, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 949
    iput-boolean v6, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    .line 951
    iput v5, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 969
    iput v5, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    .line 970
    iput v5, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    .line 1021
    iput-wide v7, p0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 1040
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 1043
    iput v5, p0, Landroid/webkit/WebView;->mAutoScrollX:I

    .line 1044
    iput v5, p0, Landroid/webkit/WebView;->mAutoScrollY:I

    .line 1045
    iput v5, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    .line 1046
    iput v5, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    .line 1047
    iput v5, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    .line 1048
    iput v5, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    .line 1049
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    .line 1050
    iput-boolean v5, p0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    .line 1056
    iput-object v2, p0, Landroid/webkit/WebView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 1057
    iput v5, p0, Landroid/webkit/WebView;->mSCH_pos_origin_handle_y:I

    .line 1060
    new-instance v0, Landroid/webkit/WebView$TouchEventQueue;

    invoke-direct {v0, p0, v2}, Landroid/webkit/WebView$TouchEventQueue;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    .line 1063
    iput-boolean v5, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    .line 1069
    iput v5, p0, Landroid/webkit/WebView;->cnt:I

    .line 1070
    iput-wide v7, p0, Landroid/webkit/WebView;->mTouchUpEvent:J

    .line 1785
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    .line 3198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    .line 3200
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    .line 3201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 3202
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollOffset:Landroid/graphics/Point;

    .line 3239
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 3260
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    .line 4582
    iput-boolean v5, p0, Landroid/webkit/WebView;->titleBarAnimation:Z

    .line 5178
    iput v5, p0, Landroid/webkit/WebView;->mOrientation:I

    .line 5217
    iput-boolean v5, p0, Landroid/webkit/WebView;->mNativeBrowser:Z

    .line 5370
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v1, 0x86

    const/16 v4, 0x40

    invoke-direct {v0, v1, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 5373
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 5571
    iput-boolean v5, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 5572
    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 5573
    iput v5, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 5574
    iput v5, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 6179
    iput-boolean v5, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 6737
    iput-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 6741
    iput-object v2, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 6743
    iput v5, p0, Landroid/webkit/WebView;->mController:I

    .line 6744
    iput-boolean v6, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    .line 6745
    iput-boolean v6, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    .line 6746
    iput-boolean v5, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    .line 7064
    iput-boolean v5, p0, Landroid/webkit/WebView;->isImageSelected:Z

    .line 7065
    iput-boolean v5, p0, Landroid/webkit/WebView;->imageCanbeMoved:Z

    .line 7066
    iput-boolean v5, p0, Landroid/webkit/WebView;->imageCanbeResized:Z

    .line 7308
    iput-boolean v5, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 8863
    iput-wide v7, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 8864
    iput-wide v7, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 8865
    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 8866
    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 8867
    iput v5, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 8868
    iput v5, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 8869
    iput-boolean v5, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 8870
    iput-boolean v5, p0, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 8871
    iput-boolean v5, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 8872
    iput-boolean v5, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 8882
    iput v5, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 8883
    iput v5, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 8884
    iput-boolean v5, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 8885
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 8886
    iput-wide v7, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 8887
    iput-wide v7, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 8893
    iput-boolean v6, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 10426
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->imageSelectRect:Landroid/graphics/Rect;

    .line 11979
    iput-boolean v5, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 11980
    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsControllerSelected:Z

    .line 11981
    iput-boolean v5, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 11982
    iput-boolean v5, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 11983
    iput-boolean v5, p0, Landroid/webkit/WebView;->mActionMove:Z

    .line 11987
    iput-boolean v5, p0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 11988
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 11995
    iput v5, p0, Landroid/webkit/WebView;->mRequestNewSelection:I

    .line 1278
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1280
    if-nez p1, :cond_0

    .line 1281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1285
    :cond_0
    invoke-static {p1}, Landroid/webkit/JniUtil;->setContext(Landroid/content/Context;)V

    .line 1287
    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 1288
    new-instance v0, Landroid/webkit/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    .line 1289
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/L10nUtils;->setApplicationContext(Landroid/content/Context;)V

    .line 1290
    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0, v1, p4}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1291
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 1292
    new-instance v0, Landroid/widget/OverScroller;

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    .line 1293
    new-instance v0, Landroid/webkit/ZoomManager;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p0, v1}, Landroid/webkit/ZoomManager;-><init>(Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    .line 1298
    invoke-direct {p0}, Landroid/webkit/WebView;->init()V

    .line 1299
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setupPackageListener(Landroid/content/Context;)V

    .line 1300
    invoke-static {p1}, Landroid/webkit/WebView;->setupProxyListener(Landroid/content/Context;)V

    .line 1301
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1307
    if-eqz p5, :cond_1

    .line 1308
    invoke-direct {p0}, Landroid/webkit/WebView;->startPrivateBrowsing()V

    .line 1311
    :cond_1
    new-instance v0, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$AutoFillData;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    .line 1313
    new-instance v0, Landroid/webkit/WebMagnifier;

    invoke-direct {v0, p0}, Landroid/webkit/WebMagnifier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    .line 1314
    new-instance v0, Landroid/webkit/WebTextSelectionControls;

    invoke-direct {v0, p1, p0}, Landroid/webkit/WebTextSelectionControls;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    .line 1320
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    .line 1260
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    .line 1261
    return-void
.end method

.method private IsTextSelectionControlerForward(II)Z
    .locals 6
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 12132
    const/4 v0, 0x0

    .line 12134
    .local v0, moveForward:Z
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 12135
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 12136
    .local v2, startX:I
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 12139
    .local v3, startY:I
    if-le p2, v3, :cond_1

    .line 12140
    const/4 v0, 0x1

    .line 12182
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_0
    :goto_0
    return v0

    .line 12141
    .restart local v2       #startX:I
    .restart local v3       #startY:I
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt p2, v4, :cond_0

    add-int/lit8 v4, v2, 0x5

    if-le p1, v4, :cond_0

    .line 12143
    const/4 v0, 0x1

    goto :goto_0

    .line 12145
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_2
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 12146
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 12147
    .restart local v2       #startX:I
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 12151
    .restart local v3       #startY:I
    if-ge p2, v3, :cond_3

    .line 12152
    const/4 v0, 0x1

    goto :goto_0

    .line 12153
    :cond_3
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v4, :cond_0

    add-int/lit8 v4, v2, -0x5

    if-ge p1, v4, :cond_0

    .line 12155
    const/4 v0, 0x1

    goto :goto_0

    .line 12157
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_4
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_5

    .line 12158
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 12159
    .local v1, selectRect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 12160
    .restart local v3       #startY:I
    add-int/lit8 v4, v3, -0x2

    if-ge p2, v4, :cond_0

    .line 12161
    const/4 v0, 0x1

    goto :goto_0

    .line 12163
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v3           #startY:I
    :cond_5
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 12164
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 12165
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 12166
    .restart local v3       #startY:I
    add-int/lit8 v4, v3, 0x2

    if-le p2, v4, :cond_0

    .line 12167
    const/4 v0, 0x1

    goto :goto_0

    .line 12169
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v3           #startY:I
    :cond_6
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 12170
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 12171
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 12172
    .restart local v2       #startX:I
    add-int/lit8 v4, v2, -0x2

    if-ge p1, v4, :cond_0

    .line 12173
    const/4 v0, 0x1

    goto :goto_0

    .line 12175
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v2           #startX:I
    :cond_7
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 12176
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 12177
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 12178
    .restart local v2       #startX:I
    add-int/lit8 v4, v2, 0x2

    if-le p1, v4, :cond_0

    .line 12179
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private WebkitSelectionAreaValidate(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "Value"

    .prologue
    const/4 v4, 0x0

    .line 7092
    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 7093
    .local v1, right:I
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 7094
    .local v0, bottom:I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 7095
    .local v2, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 7096
    iget v3, v2, Landroid/graphics/Rect;->right:I

    if-ge v1, v3, :cond_0

    .line 7097
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 7098
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v3, :cond_1

    .line 7099
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 7100
    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_2

    .line 7101
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 7102
    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_3

    .line 7103
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 7104
    :cond_3
    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-le v3, v1, :cond_4

    .line 7105
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 7106
    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-le v3, v0, :cond_5

    .line 7107
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 7108
    :cond_5
    return-void
.end method

.method private _onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    .line 7747
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7748
    :cond_0
    const/4 v0, 0x0

    .line 7772
    :goto_0
    return v0

    .line 7758
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_2

    .line 7759
    iget-object v1, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v1}, Landroid/webkit/WebMagnifier;->hide()V

    .line 7765
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_3

    iget v1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    if-eqz v1, :cond_3

    .line 7766
    iget-object v1, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v1}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Landroid/webkit/WebView;->passMultiTouchToWebKit(Landroid/view/MotionEvent;J)V

    goto :goto_0

    .line 7768
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView$TouchEventQueue;->enqueueTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 3163
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 3164
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 3165
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/webkit/WebView;->mTurnOffWindowResizeAnim:Z

    return v0
.end method

.method static synthetic access$002(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-boolean p1, p0, Landroid/webkit/WebView;->mTurnOffWindowResizeAnim:Z

    return p1
.end method

.method static synthetic access$100(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-static {p0}, Landroid/webkit/WebView;->nativeOnTrimMemory(I)V

    return-void
.end method

.method static synthetic access$10000(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->displayDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    return v0
.end method

.method static synthetic access$10200(Landroid/webkit/WebView;)Landroid/webkit/FindActionModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    return-object v0
.end method

.method static synthetic access$10300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return v0
.end method

.method static synthetic access$10302(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput p1, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$10400(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10500(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doMotionUp(II)V

    return-void
.end method

.method static synthetic access$10600(Landroid/webkit/WebView;)Landroid/webkit/HTML5VideoViewProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    return-object v0
.end method

.method static synthetic access$10700(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissFullScreenMode()V

    return-void
.end method

.method static synthetic access$10800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$10900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method static synthetic access$11202(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput p1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$11302(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput p1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$11400(Landroid/webkit/WebView;)Landroid/webkit/AccessibilityInjector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    return-object v0
.end method

.method static synthetic access$11500(Landroid/webkit/WebView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setTouchHighlightRects(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$11600(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeSelectAt(II)V

    return-void
.end method

.method static synthetic access$11700(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$SelectionCopiedData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->updateSelectionInfo(Landroid/webkit/WebViewCore$SelectionCopiedData;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12100(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12200(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12300(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12500(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12600(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object v0
.end method

.method static synthetic access$12602(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-object p1, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object p1
.end method

.method static synthetic access$12700(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;)Landroid/webkit/ZoomManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$1402(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput p1, p0, Landroid/webkit/WebView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;)Landroid/webkit/PointerDevice$TouchOptimizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->_onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-object p1, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    return-object p1
.end method

.method static synthetic access$300(Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-static {p0}, Landroid/webkit/WebView;->handleProxyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/webkit/WebView;)Landroid/graphics/Region;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    return v0
.end method

.method static synthetic access$3800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchX:I

    return v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchY:I

    return v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return v0
.end method

.method static synthetic access$4102(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput p1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    return p1
.end method

.method static synthetic access$4200(Landroid/webkit/WebView;Landroid/view/MotionEvent;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->handleTouchEventCommon(Landroid/view/MotionEvent;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return v0
.end method

.method static synthetic access$4302(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return p1
.end method

.method static synthetic access$4400(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return v0
.end method

.method static synthetic access$4402(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return p1
.end method

.method static synthetic access$4500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return v0
.end method

.method static synthetic access$4502(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput p1, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return p1
.end method

.method static synthetic access$4600(Landroid/webkit/WebView;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->startScrollingLayer(FF)V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->startDrag()V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$4900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$500()Ljava/util/Set;
    .locals 1

    .prologue
    .line 372
    sget-object v0, Landroid/webkit/WebView;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doDrag(II)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$5400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5500(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    return v0
.end method

.method static synthetic access$5600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$5700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5800(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    return-void
.end method

.method static synthetic access$5900(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mAutoScrollX:I

    return v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mAutoScrollY:I

    return v0
.end method

.method static synthetic access$6102(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-boolean p1, p0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    return p1
.end method

.method static synthetic access$6200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/WebView;IIZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Landroid/webkit/WebView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->scrollLayerTo(II)V

    return-void
.end method

.method static synthetic access$6600(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    return-void
.end method

.method static synthetic access$6702(Landroid/webkit/WebView;Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-object p1, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    return-object p1
.end method

.method static synthetic access$6800(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$7100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$7200(Landroid/webkit/WebView;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Landroid/webkit/WebView;)Landroid/webkit/WebView$TouchEventQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->doShortPress()V

    return-void
.end method

.method static synthetic access$7500(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->spawnContentScrollTo(II)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkit/WebView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeReplaceBaseContent(I)V

    return-void
.end method

.method static synthetic access$7900(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8100(Landroid/webkit/WebView;ILjava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeCreate(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$8200(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object v0
.end method

.method static synthetic access$8202(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-object p1, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    return-object p1
.end method

.method static synthetic access$8300(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$8400(IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    invoke-static {p0, p1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    return-void
.end method

.method static synthetic access$8500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$8600(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$8800(Landroid/webkit/WebView;IIZJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 372
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/webkit/WebView;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->updateWebTextViewPosition()V

    return-void
.end method

.method static synthetic access$9100(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    return v0
.end method

.method static synthetic access$9102(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-boolean p1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    return p1
.end method

.method static synthetic access$9200(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget v0, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    return v0
.end method

.method static synthetic access$9400(Landroid/webkit/WebView;Ljava/lang/String;I)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Landroid/webkit/WebView;Landroid/graphics/Rect;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$9600(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 372
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$9702(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-boolean p1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$9802(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-boolean p1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$9902(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return p1
.end method

.method private accessibilityScriptInjected()Z
    .locals 1

    .prologue
    .line 11749
    iget-boolean v0, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    return v0
.end method

.method private addAccessibilityApisToJavaScript()V
    .locals 5

    .prologue
    .line 1571
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1574
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1575
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1576
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1577
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1579
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1580
    iget-object v2, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const-string v3, "accessibility"

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1584
    .end local v0           #ctx:Landroid/content/Context;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3266
    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3267
    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 3272
    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 3273
    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 3274
    iget-object v0, p0, Landroid/webkit/WebView;->mContentVisibleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 3275
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3242
    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 3243
    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    neg-int v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    neg-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3244
    return-void
.end method

.method private canOptimizeTouchEvent()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 7667
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7669
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v2, :cond_1

    .line 7681
    :cond_0
    :goto_0
    return v1

    .line 7672
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 7676
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7679
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private cancelTouch()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x3

    .line 8797
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 8798
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8799
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8802
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v2, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_2

    .line 8804
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 8805
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8806
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 8808
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8809
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8810
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8811
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8812
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8816
    invoke-direct {p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    .line 8818
    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 8819
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 8820
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 8821
    return-void
.end method

.method private cancelWebCoreTouchEvent(IIZ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "removeEvents"

    .prologue
    const/16 v7, 0x8d

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8652
    invoke-direct {p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8653
    if-eqz p3, :cond_0

    .line 8654
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3, v7}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 8656
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 8657
    .local v0, ted:Landroid/webkit/WebViewCore$TouchEventData;
    new-array v3, v6, [I

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 8658
    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    aput v5, v3, v5

    .line 8659
    new-array v3, v6, [Landroid/graphics/Point;

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 8660
    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v5

    .line 8661
    new-array v3, v6, [Landroid/graphics/Point;

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 8662
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    sub-int v1, v3, v4

    .line 8663
    .local v1, viewX:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int v2, v3, v4

    .line 8664
    .local v2, viewY:I
    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v5

    .line 8665
    const/4 v3, 0x3

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 8666
    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 8668
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 8669
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3, v7, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8670
    const/4 v3, 0x4

    iput v3, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 8672
    if-eqz p3, :cond_1

    .line 8675
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->ignoreCurrentlyMissingEvents()V

    .line 8678
    .end local v0           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    .end local v1           #viewX:I
    .end local v2           #viewY:I
    :cond_1
    return-void
.end method

.method private checkForceSecSelection()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.google.android.gm"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.android.settings"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.osp.app.signin"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1353
    .local v1, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1355
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 1356
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseDefaultClipboard(Z)V

    .line 1358
    :cond_0
    return-void
.end method

.method private static checkThread()V
    .locals 3

    .prologue
    .line 11824
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 11825
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

    .line 11830
    .local v0, throwable:Ljava/lang/Throwable;
    const-string/jumbo v1, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11831
    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    .line 11833
    :cond_0
    return-void
.end method

.method private clearHelpers()V
    .locals 0

    .prologue
    .line 1905
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 1906
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearActionModes()V

    .line 1907
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissFullScreenMode()V

    .line 1908
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 1909
    return-void
.end method

.method private static computeDuration(II)I
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 4019
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4020
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 4021
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeRealHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 3382
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 3383
    iget v0, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 3386
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private computeRealVerticalScrollRange()I
    .locals 2

    .prologue
    .line 3412
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 3413
    iget v0, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 3416
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private contentSizeChanged(Z)V
    .locals 2
    .parameter "updateLayout"

    .prologue
    .line 4329
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4348
    :cond_0
    :goto_0
    return-void

    .line 4333
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v0, :cond_3

    .line 4334
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 4336
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 4338
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    if-eqz v0, :cond_5

    .line 4339
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_0

    .line 4341
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 4346
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto :goto_0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 3115
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private destroyImpl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1929
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1937
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v1, :cond_0

    .line 1938
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->remove()V

    .line 1939
    iput-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    .line 1941
    :cond_0
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeStopGL()V

    .line 1942
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_2

    .line 1945
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1946
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1948
    monitor-enter p0

    .line 1949
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1950
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1951
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 1952
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1954
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1955
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1958
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v2

    .line 1959
    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1960
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1962
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_2
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_3

    .line 1963
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDestroy()V

    .line 1964
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    .line 1966
    :cond_3
    return-void

    .line 1952
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1960
    .restart local v0       #webViewCore:Landroid/webkit/WebViewCore;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private didUpdateWebTextViewDimensions(I)Z
    .locals 9
    .parameter "intersection"

    .prologue
    .line 5256
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5257
    .local v0, contentBounds:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 5258
    .local v2, vBox:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 5259
    .local v3, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 5260
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->offsetByLayerScrollPosition(Landroid/graphics/Rect;)V

    .line 5262
    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Landroid/webkit/WebView;->mInUserScroll:Z

    if-nez v4, :cond_0

    .line 5263
    invoke-virtual {p0}, Landroid/webkit/WebView;->revealSelection()V

    .line 5270
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5281
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "invalid parameter passed to didUpdateWebTextViewDimensions"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 5272
    :pswitch_0
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    .line 5284
    .local v1, onScreen:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 5285
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 5287
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->updateTextSize()V

    .line 5288
    invoke-virtual {p0}, Landroid/webkit/WebView;->updateWebTextViewPadding()V

    .line 5289
    const/4 v4, 0x1

    .line 5297
    :goto_1
    return v4

    .line 5275
    .end local v1           #onScreen:Z
    :pswitch_1
    invoke-static {v3, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 5276
    .restart local v1       #onScreen:Z
    goto :goto_0

    .line 5278
    .end local v1           #onScreen:Z
    :pswitch_2
    const/4 v1, 0x1

    .line 5279
    .restart local v1       #onScreen:Z
    goto :goto_0

    .line 5296
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->remove()V

    .line 5297
    const/4 v4, 0x0

    goto :goto_1

    .line 5270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static disablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1994
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1995
    const-class v2, Landroid/webkit/WebView;

    monitor-enter v2

    .line 1996
    :try_start_0
    invoke-static {}, Landroid/webkit/Network;->disablePlatformNotifications()V

    .line 1997
    const/4 v1, 0x0

    sput-boolean v1, Landroid/webkit/WebView;->sNotificationsEnabled:Z

    .line 1998
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1999
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 2000
    invoke-static {v0}, Landroid/webkit/WebView;->disableProxyListener(Landroid/content/Context;)V

    .line 2001
    :cond_0
    monitor-exit v2

    .line 2002
    return-void

    .line 2001
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized disableProxyListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1396
    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1401
    :goto_0
    monitor-exit v1

    return-void

    .line 1399
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1400
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1396
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dismissFullScreenMode()V
    .locals 1

    .prologue
    .line 7623
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7624
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v0}, Landroid/webkit/PluginFullScreenHolder;->hide()V

    .line 7625
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 7627
    :cond_0
    return-void
.end method

.method private dismissWebSelectDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2761
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v0, :cond_0

    .line 2762
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 2763
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 2764
    iput-boolean v3, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    .line 2766
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2768
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8f

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2771
    :cond_0
    return-void
.end method

.method private displayDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "Type"
    .parameter "Value"

    .prologue
    .line 5704
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5705
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5707
    :cond_0
    new-instance v0, Landroid/webkit/WebView$DateTimePicker;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebView$DateTimePicker;-><init>(Landroid/webkit/WebView;Landroid/content/Context;)V

    .line 5709
    .local v0, dt:Landroid/webkit/WebView$DateTimePicker;
    const-string v1, "date"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5710
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebView$DateTimePicker;->show(ILjava/lang/String;)V

    .line 5716
    :cond_1
    :goto_0
    return-void

    .line 5711
    :cond_2
    const-string v1, "datetime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "datetime-local"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5712
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebView$DateTimePicker;->show(ILjava/lang/String;)V

    goto :goto_0

    .line 5714
    :cond_4
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5715
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebView$DateTimePicker;->show(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private doDrag(II)V
    .locals 19
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 8711
    or-int v2, p1, p2

    if-eqz v2, :cond_4

    .line 8713
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v12

    .line 8714
    .local v12, contentX:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v13

    .line 8715
    .local v13, contentY:I
    or-int v2, v12, v13

    if-eqz v2, :cond_3

    .line 8717
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mScrollX:I

    .line 8718
    .local v5, oldX:I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mScrollY:I

    .line 8719
    .local v6, oldY:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    .line 8720
    .local v7, rangeX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    .line 8721
    .local v8, rangeY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move/from16 v16, v0

    .line 8727
    .local v16, overscrollDistance:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v2, :cond_1

    .line 8731
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v14, v2, Landroid/graphics/Rect;->right:I

    .line 8732
    .local v14, maxX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    .line 8733
    .local v15, maxY:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v12

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 8735
    .local v17, resultX:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v13

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 8738
    .local v18, resultY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_5

    .line 8741
    :cond_0
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 8742
    move/from16 p1, v12

    .line 8743
    move/from16 p2, v13

    .line 8744
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 8745
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 8746
    move v7, v14

    .line 8747
    move v8, v15

    .line 8757
    .end local v14           #maxX:I
    .end local v15           #maxY:I
    .end local v17           #resultX:I
    .end local v18           #resultY:I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_2

    .line 8758
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/OverScrollGlow;->setOverScrollDeltas(II)V

    .line 8761
    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 8764
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v2}, Landroid/webkit/OverScrollGlow;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8765
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8768
    .end local v5           #oldX:I
    .end local v6           #oldY:I
    .end local v7           #rangeX:I
    .end local v8           #rangeY:I
    .end local v16           #overscrollDistance:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->keepZoomPickerVisible()V

    .line 8770
    .end local v12           #contentX:I
    .end local v13           #contentY:I
    :cond_4
    return-void

    .line 8753
    .restart local v5       #oldX:I
    .restart local v6       #oldY:I
    .restart local v7       #rangeX:I
    .restart local v8       #rangeY:I
    .restart local v12       #contentX:I
    .restart local v13       #contentY:I
    .restart local v14       #maxX:I
    .restart local v15       #maxY:I
    .restart local v16       #overscrollDistance:I
    .restart local v17       #resultX:I
    .restart local v18       #resultY:I
    :cond_5
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_0
.end method

.method private doFling()V
    .locals 30

    .prologue
    .line 9199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/webkit/WebView;->mLastHandledMultiTouchTime:J

    sub-long v23, v9, v11

    .line 9200
    .local v23, elapsed:J
    const-wide/16 v9, 0x3c

    cmp-long v2, v23, v9

    if-gez v2, :cond_1

    .line 9201
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignore uneven multitouch release (fling): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9321
    :cond_0
    :goto_0
    return-void

    .line 9207
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_0

    .line 9210
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    .line 9211
    .local v6, maxX:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    .line 9215
    .local v8, maxY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mMaximumFling:I

    int-to-float v7, v7

    invoke-virtual {v2, v5, v7}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    .line 9216
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 9217
    .local v28, vx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getMonomialYVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v29, v0

    .line 9224
    .local v29, vy:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    .line 9225
    .local v3, scrollX:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mScrollY:I

    .line 9226
    .local v4, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move/from16 v25, v0

    .line 9227
    .local v25, overscrollDistance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move/from16 v19, v0

    .line 9230
    .local v19, overflingDistance:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v5, 0x9

    if-ne v2, v5, :cond_2

    .line 9231
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 9232
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 9233
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v2, Landroid/graphics/Rect;->right:I

    .line 9234
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 9236
    const/16 v19, 0x0

    move/from16 v25, v19

    .line 9239
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    if-eqz v2, :cond_3

    .line 9240
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    and-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    .line 9241
    const/16 v29, 0x0

    .line 9246
    :cond_3
    :goto_1
    if-nez v6, :cond_4

    if-eqz v29, :cond_5

    :cond_4
    if-nez v8, :cond_8

    if-nez v28, :cond_8

    .line 9247
    :cond_5
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 9248
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v2, :cond_6

    .line 9249
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 9251
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9252
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 9243
    :cond_7
    const/16 v28, 0x0

    goto :goto_1

    .line 9256
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v21

    .line 9257
    .local v21, currentVelocity:F
    move/from16 v0, v28

    int-to-double v9, v0

    move/from16 v0, v29

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v27, v0

    .line 9258
    .local v27, velocity:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelocity:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelocity:F

    const v5, 0x3e4ccccd

    mul-float/2addr v2, v5

    cmpl-float v2, v27, v2

    if-lez v2, :cond_a

    .line 9260
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelY:F

    float-to-double v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastVelX:F

    float-to-double v11, v2

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    move/from16 v0, v29

    int-to-double v11, v0

    move/from16 v0, v28

    int-to-double v13, v0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v22, v0

    .line 9262
    .local v22, deltaR:F
    const v20, 0x40c90fdb

    .line 9263
    .local v20, circle:F
    const v2, 0x40b4f4ab

    cmpl-float v2, v22, v2

    if-gtz v2, :cond_9

    const v2, 0x3f20d97c

    cmpg-float v2, v22, v2

    if-gez v2, :cond_a

    .line 9264
    :cond_9
    move/from16 v0, v28

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mLastVelX:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v28, v0

    .line 9265
    move/from16 v0, v29

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mLastVelY:F

    mul-float v5, v5, v21

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mLastVelocity:F

    div-float/2addr v5, v7

    add-float/2addr v2, v5

    float-to-int v0, v2

    move/from16 v29, v0

    .line 9266
    move/from16 v0, v28

    int-to-double v9, v0

    move/from16 v0, v29

    int-to-double v11, v0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v0, v9

    move/from16 v27, v0

    .line 9283
    .end local v20           #circle:F
    .end local v22           #deltaR:F
    :cond_a
    if-eqz v3, :cond_b

    if-ne v3, v6, :cond_c

    :cond_b
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_c

    .line 9284
    const/16 v28, 0x0

    .line 9286
    :cond_c
    if-eqz v4, :cond_d

    if-ne v4, v8, :cond_e

    :cond_d
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v2, v5, :cond_e

    .line 9287
    const/16 v29, 0x0

    .line 9290
    :cond_e
    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    .line 9291
    if-lez v28, :cond_f

    move/from16 v0, v25

    neg-int v2, v0

    if-eq v3, v2, :cond_10

    :cond_f
    if-gez v28, :cond_11

    add-int v2, v6, v25

    if-ne v3, v2, :cond_11

    .line 9293
    :cond_10
    const/16 v28, 0x0

    .line 9295
    :cond_11
    if-lez v29, :cond_12

    move/from16 v0, v25

    neg-int v2, v0

    if-eq v4, v2, :cond_13

    :cond_12
    if-gez v29, :cond_14

    add-int v2, v8, v25

    if-ne v4, v2, :cond_14

    .line 9297
    :cond_13
    const/16 v29, 0x0

    .line 9301
    :cond_14
    move/from16 v0, v28

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mLastVelX:F

    .line 9302
    move/from16 v0, v29

    int-to-float v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mLastVelY:F

    .line 9303
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 9306
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move/from16 v0, v28

    neg-int v12, v0

    move/from16 v0, v29

    neg-int v13, v0

    const/4 v14, 0x0

    const/16 v16, 0x0

    if-nez v6, :cond_16

    const/16 v18, 0x0

    :goto_2
    move v10, v3

    move v11, v4

    move v15, v6

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v19}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 9313
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    move-result v26

    .line 9316
    .local v26, time:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v5, 0x9

    if-eq v2, v5, :cond_15

    .line 9317
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 9320
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .end local v26           #time:I
    :cond_16
    move/from16 v18, v19

    .line 9306
    goto :goto_2
.end method

.method private doMotionUp(II)V
    .locals 4
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v3, 0x0

    .line 9572
    iget v1, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    .line 9573
    .local v0, slop:I
    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v1, :cond_0

    .line 9574
    const v1, 0x11206

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 9576
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9577
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9578
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 9585
    :cond_1
    :goto_0
    return-void

    .line 9581
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 9582
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto :goto_0
.end method

.method private doShortPress()V
    .locals 7

    .prologue
    .line 9496
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_1

    .line 9569
    :cond_0
    :goto_0
    return-void

    .line 9499
    :cond_1
    iget v3, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 9502
    const/4 v3, 0x7

    iput v3, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 9503
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    .line 9504
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 9506
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 9507
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 9508
    .local v1, contentY:I
    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v2

    .line 9514
    .local v2, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9520
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/webkit/WebView;->mTouchHighlightRequested:J

    .line 9521
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 9522
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v4, Landroid/webkit/WebView$11;

    invoke-direct {v4, p0}, Landroid/webkit/WebView$11;-><init>(Landroid/webkit/WebView;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9567
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_0
.end method

.method private doTrackball(JI)V
    .locals 25
    .parameter "time"
    .parameter "metaState"

    .prologue
    .line 9072
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/webkit/WebView;->mTrackballLastTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    sub-long/2addr v5, v7

    long-to-int v12, v5

    .line 9073
    .local v12, elapsed:I
    if-nez v12, :cond_0

    .line 9074
    const/16 v12, 0xc8

    .line 9076
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v22, v3, v5

    .line 9077
    .local v22, xRate:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    const/high16 v5, 0x447a

    mul-float/2addr v3, v5

    int-to-float v5, v12

    div-float v24, v3, v5

    .line 9078
    .local v24, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v19

    .line 9079
    .local v19, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v18

    .line 9080
    .local v18, viewHeight:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_3

    .line 9081
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    if-nez v3, :cond_1

    .line 9085
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionX()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectX:I

    .line 9086
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mSelectY:I

    .line 9087
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mExtendSelection:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 9088
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 9090
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/webkit/WebView;->moveSelection(FF)V

    .line 9092
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 9158
    :cond_2
    :goto_0
    return-void

    .line 9095
    :cond_3
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 9096
    .local v9, ax:F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 9097
    .local v10, ay:F
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 9105
    .local v15, maxA:F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mContentWidth:I

    sub-int v20, v3, v19

    .line 9106
    .local v20, width:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mContentHeight:I

    sub-int v13, v3, v18

    .line 9107
    .local v13, height:I
    if-gez v20, :cond_4

    const/16 v20, 0x0

    .line 9108
    :cond_4
    if-gez v13, :cond_5

    const/4 v13, 0x0

    .line 9109
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 9110
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    const/high16 v5, 0x4040

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 9111
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 9112
    const/4 v3, 0x0

    float-to-int v5, v15

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 9113
    .local v11, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v16, v0

    .line 9114
    .local v16, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    .line 9115
    .local v17, oldScrollY:I
    if-lez v11, :cond_b

    .line 9116
    cmpg-float v3, v9, v10

    if-gez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_6

    const/16 v4, 0x13

    .line 9120
    .local v4, selectKeyCode:I
    :goto_1
    const/16 v3, 0xa

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 9127
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativePageShouldHandleShiftAndArrows()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 9128
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    if-ge v14, v11, :cond_9

    .line 9129
    const/4 v7, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    .line 9128
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 9116
    .end local v4           #selectKeyCode:I
    .end local v14           #i:I
    :cond_6
    const/16 v4, 0x14

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_8

    const/16 v4, 0x15

    goto :goto_1

    :cond_8
    const/16 v4, 0x16

    goto :goto_1

    .line 9131
    .restart local v4       #selectKeyCode:I
    .restart local v14       #i:I
    :cond_9
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    .line 9135
    .end local v14           #i:I
    :cond_a
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 9137
    .end local v4           #selectKeyCode:I
    :cond_b
    const/4 v3, 0x5

    if-lt v11, v3, :cond_2

    .line 9138
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v21

    .line 9139
    .local v21, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v13}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v23

    .line 9148
    .local v23, yMove:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    sub-int v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_c

    .line 9149
    const/16 v21, 0x0

    .line 9151
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollY:I

    sub-int v3, v3, v17

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_d

    .line 9152
    const/16 v23, 0x0

    .line 9154
    :cond_d
    if-nez v21, :cond_e

    if-eqz v23, :cond_2

    .line 9155
    :cond_e
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto/16 :goto_0

    .line 9132
    .end local v21           #xMove:I
    .end local v23           #yMove:I
    .restart local v4       #selectKeyCode:I
    :cond_f
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move v5, v11

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9133
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto :goto_3
.end method

.method private domChangedFocus()V
    .locals 2

    .prologue
    .line 2909
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2912
    :cond_0
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;Z)V
    .locals 10
    .parameter "canvas"
    .parameter "drawRings"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 4758
    iget v3, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    move v1, v9

    :goto_0
    invoke-direct {p0, p1, v3, v1}, Landroid/webkit/WebView;->drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V

    .line 4761
    iget-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    invoke-direct {p0, p1, v1}, Landroid/webkit/WebView;->drawWebSelectionControl(Landroid/graphics/Canvas;Z)V

    .line 4763
    iget-boolean v1, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v9, v1, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v1

    if-ne v9, v1, :cond_1

    .line 4765
    iget-boolean v1, p0, Landroid/webkit/WebView;->mIsSCHExpired:Z

    if-ne v9, v1, :cond_5

    iget-boolean v1, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    if-nez v1, :cond_5

    .line 4767
    const-string/jumbo v1, "webview"

    const-string v3, "  drawContent ()   Hiding  SingleCursorHandler"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4768
    iput-boolean v2, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    .line 4769
    iget-object v1, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    if-eqz v1, :cond_0

    .line 4770
    const-string/jumbo v1, "webview"

    const-string v3, "  isVisibleCursorHandler is false"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    iget-object v1, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    iget-object v3, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 4773
    :cond_0
    iput-boolean v2, p0, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 4774
    iput-boolean v2, p0, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    .line 4775
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4785
    :cond_1
    :goto_1
    iget-boolean v1, p0, Landroid/webkit/WebView;->imageCanbeMoved:Z

    if-ne v1, v9, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-ne v1, v9, :cond_2

    .line 4787
    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v7

    .line 4788
    .local v7, normalCursorRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0xf

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, 0xf

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4789
    .local v6, imageCursorRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4790
    .local v0, cursorPath:Landroid/graphics/Path;
    iget v1, v6, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 4791
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4792
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 4793
    .local v8, paint:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4794
    invoke-virtual {p1, v0, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4799
    .end local v0           #cursorPath:Landroid/graphics/Path;
    .end local v6           #imageCursorRect:Landroid/graphics/Rect;
    .end local v7           #normalCursorRect:Landroid/graphics/Rect;
    .end local v8           #paint:Landroid/graphics/Paint;
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->mGranularity:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 4801
    const-string/jumbo v1, "webview"

    const-string v2, "drawWebImageSelectionControl is being called "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawWebImageSelectionControl(Landroid/graphics/Canvas;)V

    .line 4803
    iput-boolean v9, p0, Landroid/webkit/WebView;->isImageSelected:Z

    .line 4808
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 4758
    goto/16 :goto_0

    .line 4780
    :cond_5
    const-string/jumbo v1, "webview"

    const-string v2, "  drawContent ()   Drawing  SingleCursorHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4781
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawSingleCursorHandler(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V
    .locals 23
    .parameter "canvas"
    .parameter "color"
    .parameter "drawCursorRing"

    .prologue
    .line 5378
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_1

    .line 5379
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5380
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 5518
    :cond_0
    :goto_0
    return-void

    .line 5383
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_0

    .line 5385
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v17

    .line 5386
    .local v17, animateZoom:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    :cond_4
    const/16 v16, 0x1

    .line 5391
    .local v16, animateScroll:Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 5392
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 5393
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5394
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5395
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5397
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    if-nez v2, :cond_6

    .line 5398
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x64

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5400
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x9

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5403
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 5406
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v22

    .line 5407
    .local v22, saveCount:I
    if-eqz v17, :cond_e

    .line 5408
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkit/ZoomManager;->animateZoom(Landroid/graphics/Canvas;)V

    .line 5413
    :cond_7
    :goto_2
    const/4 v15, 0x0

    .line 5416
    .local v15, UIAnimationsRunning:Z
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->nativeEvaluateLayersAnimations(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5418
    const/4 v15, 0x1

    .line 5423
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xc4

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5424
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5428
    :cond_8
    const/4 v8, 0x0

    .line 5429
    .local v8, extras:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v2, :cond_f

    .line 5430
    const/4 v8, 0x1

    .line 5467
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    .line 5468
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 5469
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v2, :cond_15

    const/4 v4, 0x0

    .line 5470
    .local v4, glRectViewport:Landroid/graphics/Rect;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v2, :cond_16

    const/4 v5, 0x0

    .line 5471
    .local v5, viewRectViewport:Landroid/graphics/Rect;
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNativeClass:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScale()F

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebView;->nativeGetDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I

    move-result v20

    .local v20, functor:I
    move-object/from16 v2, p1

    .line 5473
    check-cast v2, Landroid/view/HardwareCanvas;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/HardwareCanvas;->callDrawGLFunction(I)Z

    .line 5475
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getHardwareAccelSkiaEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_a

    .line 5476
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getHardwareAccelSkiaEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    .line 5477
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mHardwareAccelSkia:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->nativeUseHardwareAccelSkia(Z)V

    .line 5498
    .end local v4           #glRectViewport:Landroid/graphics/Rect;
    .end local v5           #viewRectViewport:Landroid/graphics/Rect;
    .end local v20           #functor:I
    :cond_a
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5499
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-nez v2, :cond_b

    .line 5500
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->drawTextSelectionHandles(Landroid/graphics/Canvas;)V

    .line 5503
    :cond_b
    const/4 v2, 0x3

    if-ne v8, v2, :cond_c

    .line 5504
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 5505
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 5508
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    if-eqz v2, :cond_0

    .line 5509
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 5514
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5515
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    goto/16 :goto_0

    .line 5386
    .end local v8           #extras:I
    .end local v15           #UIAnimationsRunning:Z
    .end local v16           #animateScroll:Z
    .end local v22           #saveCount:I
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 5409
    .restart local v16       #animateScroll:Z
    .restart local v22       #saveCount:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_7

    .line 5410
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_2

    .line 5431
    .restart local v8       #extras:I
    .restart local v15       #UIAnimationsRunning:Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_10

    .line 5437
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mAutoSelection:Z

    if-eqz v2, :cond_14

    .line 5439
    if-eqz p3, :cond_9

    .line 5440
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_13

    .line 5441
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 5442
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v21

    .line 5443
    .local v21, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v21, :cond_11

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static/range {v21 .. v21}, Landroid/webkit/WebView$HitTestResult;->access$1700(Landroid/webkit/WebView$HitTestResult;)I

    move-result v2

    if-nez v2, :cond_12

    .line 5446
    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 5447
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-nez v2, :cond_9

    .line 5448
    const/4 v8, 0x3

    goto/16 :goto_3

    .line 5450
    .end local v21           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-nez v2, :cond_9

    .line 5451
    const/4 v8, 0x3

    goto/16 :goto_3

    .line 5455
    :cond_14
    if-eqz p3, :cond_9

    .line 5456
    const/4 v8, 0x3

    goto/16 :goto_3

    .line 5469
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    goto/16 :goto_4

    .line 5470
    .restart local v4       #glRectViewport:Landroid/graphics/Rect;
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    goto/16 :goto_5

    .line 5481
    .end local v4           #glRectViewport:Landroid/graphics/Rect;
    :cond_17
    const/16 v19, 0x0

    .line 5482
    .local v19, df:Landroid/graphics/DrawFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isZoomAnimating()Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz v15, :cond_1a

    .line 5483
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomFilter:Landroid/graphics/DrawFilter;

    move-object/from16 v19, v0

    .line 5487
    :cond_19
    :goto_7
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5490
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v12, p2

    move v13, v8

    invoke-direct/range {v9 .. v14}, Landroid/webkit/WebView;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IIZ)I

    move-result v18

    .line 5492
    .local v18, content:I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 5493
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v2, :cond_a

    if-eqz v18, :cond_a

    .line 5494
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x85

    const/4 v6, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v3, v0, v6}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_6

    .line 5484
    .end local v18           #content:I
    :cond_1a
    if-eqz v16, :cond_19

    .line 5485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScrollFilter:Landroid/graphics/DrawFilter;

    move-object/from16 v19, v0

    goto :goto_7
.end method

.method private drawOverScrollBackground(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 4815
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 4816
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    .line 4817
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108055e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4820
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4822
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    .line 4823
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4824
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4825
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4828
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v9, 0x0

    .line 4829
    .local v9, top:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v8

    .line 4830
    .local v8, right:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v9, v0

    .line 4832
    .local v7, bottom:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4833
    iget v0, p0, Landroid/view/View;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4834
    iget v0, p0, Landroid/view/View;->mScrollX:I

    neg-int v0, v0

    int-to-float v1, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v9, v0

    int-to-float v2, v0

    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v8, v0

    int-to-float v3, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 4836
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 4837
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4839
    const/high16 v1, -0x4080

    const/4 v0, -0x1

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4841
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v9, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4842
    return-void
.end method

.method private drawSingleCursorHandler(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 4652
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-nez v12, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getCaretState()Z

    move-result v12

    if-nez v12, :cond_2

    .line 4739
    :cond_1
    :goto_0
    return-void

    .line 4655
    :cond_2
    const-string/jumbo v12, "webview"

    const-string v13, "drawSingleCursorHandler Enter "

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4657
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4658
    .local v7, metric:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4660
    iget v12, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v13, 0x42c8

    mul-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v13

    iget v13, v13, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    int-to-float v13, v13

    div-float v2, v12, v13

    .line 4662
    .local v2, density:F
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drawSingleCursorHandler density = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4667
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 4668
    .local v1, cursurRect:Landroid/graphics/Rect;
    iget v10, v1, Landroid/graphics/Rect;->left:I

    .line 4669
    .local v10, x:I
    iget v12, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    add-int v11, v12, v13

    .line 4670
    .local v11, y:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 4671
    .local v9, visRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4673
    iget v12, v1, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroid/graphics/Rect;->top:I

    if-ne v12, v13, :cond_3

    iget v12, v1, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v12, v13, :cond_1

    .line 4676
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10806d1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4678
    .local v8, singleCursorhandler:Landroid/graphics/drawable/Drawable;
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drawSingleCursorHandler singleCursorhandler is drawn "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4679
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 4680
    .local v3, iSCHHeight:I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 4681
    .local v5, iSCHWidth:I
    int-to-float v12, v3

    mul-float/2addr v12, v2

    float-to-int v4, v12

    .line 4682
    .local v4, iSCHHeightByDensity:I
    int-to-float v12, v5

    mul-float/2addr v12, v2

    float-to-int v6, v12

    .line 4684
    .local v6, iSCHWidthByDensity:I
    add-int v12, v11, v3

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    if-le v12, v13, :cond_7

    .line 4686
    iget v12, v1, Landroid/graphics/Rect;->top:I

    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    if-lt v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    if-nez v12, :cond_4

    .line 4688
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkit/WebView;->mIsSCHExpired:Z

    .line 4689
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v12}, Ljava/util/TimerTask;->cancel()Z

    .line 4690
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v12}, Ljava/util/Timer;->purge()I

    goto/16 :goto_0

    .line 4694
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->textChangedForWatcher(Z)V

    .line 4696
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10805ba

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 4697
    div-int/lit8 v12, v6, 0x2

    sub-int v12, v10, v12

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int v13, v11, v13

    sub-int/2addr v13, v4

    div-int/lit8 v14, v6, 0x2

    add-int/2addr v14, v10

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    sub-int v15, v11, v15

    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4698
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkit/WebView;->mIsInReverse:Z

    .line 4714
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    if-nez v12, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/WebView;->iAlpha:I

    const/16 v13, 0xff

    if-ge v12, v13, :cond_a

    .line 4716
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drawSingleCursorHandler before add  iAlpha = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebView;->iAlpha:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/WebView;->iAlpha:I

    add-int/lit8 v12, v12, 0x33

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/WebView;->iAlpha:I

    .line 4718
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/WebView;->iAlpha:I

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4719
    move-object/from16 v0, p0

    iget v12, v0, Landroid/webkit/WebView;->iAlpha:I

    const/16 v13, 0xff

    if-ne v12, v13, :cond_6

    .line 4721
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4723
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4724
    const-string/jumbo v12, "webview"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drawSingleCursorHandler -after add  iAlpha = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkit/WebView;->iAlpha:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4700
    :cond_7
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    iget v13, v9, Landroid/graphics/Rect;->top:I

    if-gt v12, v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    if-nez v12, :cond_8

    .line 4702
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkit/WebView;->mIsSCHExpired:Z

    .line 4703
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v12}, Ljava/util/TimerTask;->cancel()Z

    .line 4704
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/webkit/WebView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v12}, Ljava/util/Timer;->purge()I

    goto/16 :goto_0

    .line 4708
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->textChangedForWatcher(Z)V

    .line 4710
    :cond_9
    div-int/lit8 v12, v6, 0x2

    sub-int v12, v10, v12

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v13, v10

    add-int v14, v11, v4

    invoke-virtual {v8, v12, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4711
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkit/WebView;->mIsInReverse:Z

    goto/16 :goto_1

    .line 4730
    :cond_a
    const/16 v12, 0xff

    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/WebView;->iAlpha:I

    .line 4732
    const-string/jumbo v12, "webview"

    const-string v13, "drawSingleCursorHandler invalida() and  draw again   "

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4736
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4737
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    goto/16 :goto_0
.end method

.method private drawTextSelectionHandles(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 5521
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_0

    .line 5522
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    .line 5523
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    const v9, 0x66ff9129

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 5525
    :cond_0
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-virtual {v8}, Landroid/graphics/Region;->setEmpty()V

    .line 5526
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    iget-object v9, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-direct {p0, v8, v9}, Landroid/webkit/WebView;->nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V

    .line 5527
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 5528
    .local v5, r:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RegionIterator;

    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionRegion:Landroid/graphics/Region;

    invoke-direct {v4, v8}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 5529
    .local v4, iter:Landroid/graphics/RegionIterator;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5530
    .local v0, clip:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    invoke-virtual {v4, v5}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 5531
    iget v8, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 5535
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5536
    iget-object v8, p0, Landroid/webkit/WebView;->mTextSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 5539
    :cond_2
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_3

    .line 5540
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10805b7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    .line 5543
    :cond_3
    const/4 v8, 0x4

    new-array v3, v8, [I

    .line 5544
    .local v3, handles:[I
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-direct {p0, v8, v3}, Landroid/webkit/WebView;->nativeGetSelectionHandles(I[I)V

    .line 5545
    const/4 v8, 0x0

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v6

    .line 5546
    .local v6, start_x:I
    const/4 v8, 0x1

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v7

    .line 5547
    .local v7, start_y:I
    const/4 v8, 0x2

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    .line 5548
    .local v1, end_x:I
    const/4 v8, 0x3

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v2

    .line 5550
    .local v2, end_y:I
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    sub-int/2addr v6, v8

    .line 5551
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5554
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_4

    .line 5555
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10805be

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    .line 5558
    :cond_4
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    sub-int/2addr v1, v8

    .line 5559
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v1

    iget-object v10, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v8, v1, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5566
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5567
    iget-object v8, p0, Landroid/webkit/WebView;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5568
    return-void
.end method

.method private drawWebImageSelectionControl(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 7112
    iget-object v0, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    .line 7115
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebTextSelectionControls;->DrawImageSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 7116
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->outLinePath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    iget-object v2, v2, Landroid/webkit/WebViewCore$ImageSelectionCopiedData;->handlesPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebTextSelectionControls;->DrawImageResizeMoveHandlers(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Path;)V

    .line 7117
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7124
    :goto_0
    return-void

    .line 7121
    :cond_0
    const-string/jumbo v0, "webview"

    const-string v1, "DrawImageSelectionControls  mImageCopyInfo is null and invalidate()  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7122
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method private drawWebSelectionControl(Landroid/graphics/Canvas;Z)V
    .locals 11
    .parameter "canvas"
    .parameter "pressed"

    .prologue
    const/4 v1, 0x1

    .line 7069
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_1

    .line 7070
    const/4 v9, 0x1

    .line 7072
    .local v9, bDisaplayController:Z
    iget v8, p0, Landroid/webkit/WebView;->mController:I

    .line 7073
    .local v8, nController:I
    iget-boolean v0, p0, Landroid/webkit/WebView;->mLongPress:Z

    if-ne v1, v0, :cond_0

    .line 7074
    const/4 v9, 0x0

    .line 7076
    :cond_0
    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7078
    .local v10, regionRect:Landroid/graphics/Rect;
    invoke-direct {p0, v10}, Landroid/webkit/WebView;->WebkitSelectionAreaValidate(Landroid/graphics/Rect;)V

    .line 7079
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v10}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 7080
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v2, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v7, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v1, p1

    move v6, p2

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V

    .line 7085
    .end local v8           #nController:I
    .end local v9           #bDisaplayController:Z
    .end local v10           #regionRect:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1976
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1977
    const-class v2, Landroid/webkit/WebView;

    monitor-enter v2

    .line 1978
    :try_start_0
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 1979
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebView;->sNotificationsEnabled:Z

    .line 1980
    invoke-static {}, Landroid/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1981
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1982
    invoke-static {v0}, Landroid/webkit/WebView;->setupProxyListener(Landroid/content/Context;)V

    .line 1983
    :cond_0
    monitor-exit v2

    .line 1984
    return-void

    .line 1983
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ensureAccessibilityScriptInjectorInstance(Z)V
    .locals 1
    .parameter "present"

    .prologue
    .line 4205
    if-eqz p1, :cond_1

    .line 4206
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-nez v0, :cond_0

    .line 4207
    new-instance v0, Landroid/webkit/AccessibilityInjector;

    invoke-direct {v0, p0}, Landroid/webkit/AccessibilityInjector;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    .line 4212
    :cond_0
    :goto_0
    return-void

    .line 4210
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_0
.end method

.method private extendScroll(I)Z
    .locals 4
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 2646
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 2647
    .local v0, finalY:I
    add-int v3, v0, p1

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    .line 2648
    .local v1, newY:I
    if-ne v1, v0, :cond_0

    .line 2651
    :goto_0
    return v2

    .line 2649
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 2650
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v2, p1}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/OverScroller;->extendDuration(I)V

    .line 2651
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 3869
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3870
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 3896
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAxsUrlParameterValue(Ljava/lang/String;)I
    .locals 4
    .parameter "url"

    .prologue
    .line 4221
    iget-object v2, p0, Landroid/webkit/WebView;->mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

    if-nez v2, :cond_0

    .line 4222
    const-string v2, "(\\?axs=(0|1))|(&axs=(0|1))"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

    .line 4224
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mMatchAxsUrlParameterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4225
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4226
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4227
    .local v0, keyValuePair:Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4229
    .end local v0           #keyValuePair:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;
    .locals 2
    .parameter "contentX"
    .parameter "contentY"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"

    .prologue
    .line 12005
    new-instance v0, Landroid/webkit/WebViewCore$CopyParams;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$CopyParams;-><init>()V

    .line 12006
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput p1, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    .line 12007
    iput p2, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    .line 12008
    iput-boolean p3, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    .line 12009
    iput-boolean p4, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    .line 12010
    iput p5, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    .line 12011
    iget v1, p0, Landroid/webkit/WebView;->mController:I

    iput v1, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    .line 12012
    const/4 v1, -0x1

    iput v1, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    .line 12013
    return-object v0
.end method

.method private getCopyParams(IIZZFI)Landroid/webkit/WebViewCore$CopyParams;
    .locals 1
    .parameter "contentX"
    .parameter "contentY"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"
    .parameter "granularity"

    .prologue
    .line 12024
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v0

    .line 12026
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput p6, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    .line 12027
    return-object v0
.end method

.method private getOverlappingActionModeHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1788
    iget-object v1, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-nez v1, :cond_0

    .line 1796
    :goto_0
    return v0

    .line 1791
    :cond_0
    iget v1, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    if-gez v1, :cond_1

    .line 1792
    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 1793
    iget-object v1, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v1}, Landroid/webkit/FindActionModeCallback;->getActionModeGlobalBottom()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    .line 1796
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    goto :goto_0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4542
    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4543
    new-instance v0, Landroid/webkit/PluginList;

    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 4542
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    .prologue
    .line 11624
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 11625
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 11632
    .local v1, width:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    return v2

    .line 11627
    .end local v1           #width:I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 11628
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 11629
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    .prologue
    .line 11637
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 11638
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 11647
    .local v0, height:I
    :goto_0
    int-to-float v2, v0

    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 11640
    .end local v0           #height:I
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 11641
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 11642
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_0
.end method

.method private getVisibleTitleHeightImpl()I
    .locals 3

    .prologue
    .line 1781
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getOverlappingActionModeHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private goBackOrForward(IZ)V
    .locals 3
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 2626
    if-eqz p1, :cond_0

    .line 2627
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2628
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x6a

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2631
    :cond_0
    return-void

    .line 2628
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goBackOrForwardImpl(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 2622
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->goBackOrForward(IZ)V

    .line 2623
    return-void
.end method

.method private static handleProxyBroadcast(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/16 v2, 0xc1

    .line 1404
    const-string/jumbo v1, "proxy"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyProperties;

    .line 1405
    .local v0, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1406
    :cond_0
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    .line 1410
    :goto_0
    return-void

    .line 1409
    :cond_1
    invoke-static {v2, v0}, Landroid/webkit/WebViewCore;->sendStaticMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleTouchEventCommon(Landroid/view/MotionEvent;III)Z
    .locals 32
    .parameter "ev"
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 7789
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 7795
    .local v20, eventTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 7796
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 7798
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mLastTouchX:I

    sub-int v16, v3, p3

    .line 7799
    .local v16, deltaX:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mLastTouchY:I

    sub-int v17, v3, p4

    .line 7800
    .local v17, deltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    add-int v3, v3, p3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v6

    .line 7801
    .local v6, contentX:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollY:I

    add-int v3, v3, p4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    .line 7803
    .local v7, contentY:I
    packed-switch p2, :pswitch_data_0

    .line 8531
    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 7805
    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7806
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7807
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 7809
    const/4 v10, 0x1

    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v3

    if-eq v10, v3, :cond_0

    .line 7814
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 7817
    const/4 v10, 0x1

    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebView;->singleCursorHandlerTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v3

    if-ne v10, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 7819
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent return TRUE , SCH is touched "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7820
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 7821
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    .line 7822
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkit/WebView;->mSCH_pos_origin_handle_y:I

    .line 7823
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    if-eqz v3, :cond_0

    .line 7825
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent -  SCH_TOUCH_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7826
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    goto/16 :goto_0

    .line 7832
    :cond_1
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent return FALSE "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7833
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 7834
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    if-eqz v3, :cond_2

    .line 7835
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent -  SCH_TOUCH_DOWN"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7836
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 7840
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeGetImageSize(II)Landroid/graphics/Rect;

    move-result-object v24

    .line 7841
    .local v24, imagerect:Landroid/graphics/Rect;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebView;->mImageRect:Landroid/graphics/Rect;

    .line 7842
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "     imagerect left ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " imagerect top  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " imagerect right = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " imagerect bottom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7843
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebView;->isImageSelected:Z

    if-ne v3, v4, :cond_7

    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-le v6, v3, :cond_7

    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v6, v3, :cond_7

    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v3, :cond_7

    move-object/from16 v0, v24

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v3, :cond_7

    .line 7844
    const-string/jumbo v3, "webview"

    const-string v4, " image is touched and can be moved "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7845
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->isTouchedImage:Z

    .line 7846
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 7854
    .end local v24           #imagerect:Landroid/graphics/Rect;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_8

    .line 7858
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 7859
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7860
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7861
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 7936
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_14

    .line 7938
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7940
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    const-wide/16 v8, 0x3e8

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7942
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_11

    .line 7943
    :cond_6
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7950
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 7951
    new-instance v31, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v31 .. v31}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7952
    .local v31, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move/from16 v0, p2

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7953
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 7954
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 7955
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 7956
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 7957
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 7958
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 7959
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7960
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v31

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7961
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 7963
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v31

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 7964
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 7965
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7966
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_13

    .line 7968
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    .line 7969
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    goto/16 :goto_0

    .line 7849
    .end local v31           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    .restart local v24       #imagerect:Landroid/graphics/Rect;
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->isTouchedImage:Z

    .line 7850
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mInActionMove:Z

    goto/16 :goto_2

    .line 7862
    .end local v24           #imagerect:Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 7863
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7864
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 7868
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    .line 7871
    :cond_9
    mul-int v3, v16, v16

    mul-int v4, v17, v17

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_a

    .line 7872
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_3

    .line 7875
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    .line 7876
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7877
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v3

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_3

    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 7883
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7884
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_10

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v3

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    .line 7888
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_d

    .line 7889
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x62

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 7892
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 7893
    new-instance v15, Landroid/webkit/WebViewCore$TouchHighlightData;

    invoke-direct {v15}, Landroid/webkit/WebViewCore$TouchHighlightData;-><init>()V

    .line 7894
    .local v15, data:Landroid/webkit/WebViewCore$TouchHighlightData;
    iput v6, v15, Landroid/webkit/WebViewCore$TouchHighlightData;->mX:I

    .line 7895
    iput v7, v15, Landroid/webkit/WebViewCore$TouchHighlightData;->mY:I

    .line 7896
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v15, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    .line 7897
    iget-object v3, v15, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    iput v3, v15, Landroid/webkit/WebViewCore$TouchHighlightData;->mNativeLayer:I

    .line 7899
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mNavSlop:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    iput v3, v15, Landroid/webkit/WebViewCore$TouchHighlightData;->mSlop:I

    .line 7903
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    .line 7904
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_e

    .line 7905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/webkit/WebView;->mTouchHighlightRequested:J

    .line 7906
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xbb

    invoke-virtual {v3, v4, v15}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 7922
    .end local v15           #data:Landroid/webkit/WebViewCore$TouchHighlightData;
    :cond_e
    sget-boolean v3, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    sub-long v3, v20, v3

    const-wide/16 v8, 0x3e8

    cmp-long v3, v3, v8

    if-gez v3, :cond_f

    .line 7923
    const v3, 0x111d6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    sub-long v8, v20, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7926
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_4

    .line 7927
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 7928
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 7932
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_3

    .line 7884
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 7944
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v3, :cond_12

    .line 7945
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_4

    .line 7947
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_4

    .line 7972
    .restart local v31       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_14

    .line 7973
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7974
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v8, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7980
    .end local v31           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_14
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/webkit/WebView;->startTouch(FFJ)V

    goto/16 :goto_0

    .line 7985
    :pswitch_1
    const/4 v10, 0x1

    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v3

    if-eq v10, v3, :cond_0

    .line 7989
    const/16 v22, 0x0

    .line 7990
    .local v22, firstMove:Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-nez v3, :cond_16

    mul-int v3, v16, v16

    mul-int v4, v17, v17

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    if-lt v3, v4, :cond_16

    .line 7992
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7993
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 7994
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7995
    const/16 v22, 0x1

    .line 7996
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_15

    .line 7997
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7999
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 8003
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    .line 8008
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_18

    if-nez v22, :cond_17

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    sub-long v3, v20, v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    int-to-long v8, v5

    cmp-long v3, v3, v8

    if-lez v3, :cond_18

    .line 8010
    :cond_17
    new-instance v31, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v31 .. v31}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 8011
    .restart local v31       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move/from16 v0, p2

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 8012
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 8013
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 8014
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 8015
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 8016
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 8017
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 8018
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 8019
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v31

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 8020
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    move-object/from16 v0, v31

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 8021
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8022
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v31

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 8023
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 8024
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8025
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    .line 8026
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-nez v3, :cond_0

    .line 8029
    if-eqz v22, :cond_18

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_18

    .line 8030
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    const/4 v8, 0x0

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8036
    .end local v31           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_18
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_22

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-ne v3, v4, :cond_22

    .line 8042
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebView;->imageCanbeResized:Z

    if-eq v3, v4, :cond_0

    .line 8045
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eq v3, v4, :cond_19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    const/4 v10, 0x1

    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebView;->singleCursorHandlerTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v3

    if-eq v10, v3, :cond_19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    .line 8048
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8052
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->isImageSelected:Z

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    if-eqz v3, :cond_20

    .line 8054
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSCH_pos_origin_handle_y:I

    sub-int v27, v7, v3

    .line 8056
    .local v27, nNewCursorPosY_offset:I
    const/16 v3, 0x14

    move/from16 v0, v27

    if-ge v0, v3, :cond_1a

    const/16 v3, -0x14

    move/from16 v0, v27

    if-le v0, v3, :cond_1a

    .line 8057
    const/16 v27, 0x0

    .line 8060
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v26, v27, v3

    .line 8062
    .local v26, nNewCursorPosY:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsInReverse:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    move/from16 v0, v26

    if-ge v0, v7, :cond_1b

    .line 8063
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mSCH_pos_origin_handle_y:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    add-int v26, v26, v3

    .line 8066
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsInReverse:Z

    if-nez v3, :cond_1c

    move/from16 v0, v26

    if-le v0, v7, :cond_1c

    .line 8067
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mSCH_pos_origin_cursor:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mSCH_pos_origin_handle_y:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    sub-int v26, v26, v3

    .line 8070
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v0, v26

    if-lt v0, v3, :cond_1d

    .line 8071
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mContentHeight:I

    add-int/lit8 v26, v3, -0x14

    .line 8074
    :cond_1d
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent -MOVE the cursor as per tocuh move  "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8075
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 8076
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    .line 8082
    .end local v27           #nNewCursorPosY_offset:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x21c

    move/from16 v0, v26

    invoke-virtual {v3, v4, v6, v0}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 8083
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " singleCursorHandlerTouchEvent -MOVE the cursor as per tocuh move  contentHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8085
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebView;->isImageSelected:Z

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebView;->isTouchedImage:Z

    if-ne v3, v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mImageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v6, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mImageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v6, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mImageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v7, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mImageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v7, v3, :cond_1f

    .line 8086
    :cond_1e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->imageCanbeMoved:Z

    .line 8087
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 8090
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mMoveIsStarted:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 8092
    const-string/jumbo v3, "webview"

    const-string/jumbo v4, "singleCursorHandlerTouchEvent- SCH_TOUCH_MOVE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8093
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 8094
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mMoveIsStarted:Z

    goto/16 :goto_0

    .line 8078
    .end local v26           #nNewCursorPosY:I
    :cond_20
    move/from16 v26, v7

    .restart local v26       #nNewCursorPosY:I
    goto/16 :goto_7

    .line 8101
    .end local v26           #nNewCursorPosY:I
    :cond_21
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent return FALSE "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8102
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    .line 8103
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mMoveIsStarted:Z

    .line 8108
    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 8114
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_28

    .line 8115
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8126
    :cond_23
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    if-eqz v3, :cond_2e

    .line 8130
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 8131
    .local v28, parent:Landroid/view/ViewParent;
    if-eqz v28, :cond_24

    .line 8132
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8134
    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    move/from16 v0, p3

    if-gt v0, v3, :cond_2a

    const/4 v3, -0x5

    :goto_9
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    .line 8136
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    move/from16 v0, p4

    if-gt v0, v3, :cond_2c

    const/4 v3, -0x5

    :goto_a
    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    .line 8138
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    if-nez v3, :cond_25

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    if-eqz v3, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    if-nez v3, :cond_26

    .line 8140
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    .line 8141
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    const-wide/16 v8, 0x10

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8144
    :cond_26
    if-nez v16, :cond_27

    if-eqz v17, :cond_0

    .line 8145
    :cond_27
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 8146
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 8121
    .end local v28           #parent:Landroid/view/ViewParent;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;

    if-eqz v3, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    cmp-long v3, v3, v8

    if-eqz v3, :cond_23

    .line 8122
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_8

    .line 8134
    .restart local v28       #parent:Landroid/view/ViewParent;
    :cond_2a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    move/from16 v0, p3

    if-lt v0, v3, :cond_2b

    const/4 v3, 0x5

    goto :goto_9

    :cond_2b
    const/4 v3, 0x0

    goto :goto_9

    .line 8136
    :cond_2c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    move/from16 v0, p4

    if-lt v0, v3, :cond_2d

    const/4 v3, 0x5

    goto :goto_a

    :cond_2d
    const/4 v3, 0x0

    goto :goto_a

    .line 8151
    .end local v28           #parent:Landroid/view/ViewParent;
    :cond_2e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_31

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_31

    .line 8154
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_0

    .line 8158
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_30

    .line 8162
    :cond_2f
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_0

    .line 8187
    :cond_30
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 8188
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    .line 8189
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    .line 8190
    const/16 v16, 0x0

    .line 8191
    const/16 v17, 0x0

    .line 8193
    move/from16 v0, p3

    int-to-float v3, v0

    move/from16 v0, p4

    int-to-float v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/webkit/WebView;->startScrollingLayer(FF)V

    .line 8194
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    .line 8198
    :cond_31
    const/16 v18, 0x0

    .line 8199
    .local v18, done:Z
    const/16 v25, 0x0

    .line 8200
    .local v25, keepScrollBarsVisible:Z
    if-nez v16, :cond_33

    if-nez v17, :cond_33

    .line 8201
    const/16 v18, 0x1

    move/from16 v25, v18

    .line 8253
    .end local v25           #keepScrollBarsVisible:Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->doDrag(II)V

    .line 8256
    if-eqz v25, :cond_36

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_36

    .line 8258
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_32

    .line 8259
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 8260
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8263
    :cond_32
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    .line 8266
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8271
    if-nez v18, :cond_35

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 8239
    .restart local v25       #keepScrollBarsVisible:Z
    :cond_33
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:I

    .line 8240
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:I

    .line 8242
    mul-int v3, v16, v16

    mul-int v4, v17, v17

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    if-le v3, v4, :cond_34

    .line 8243
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 8244
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 8250
    :goto_c
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto :goto_b

    .line 8246
    :cond_34
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 8248
    const/16 v25, 0x1

    goto :goto_c

    .line 8271
    .end local v25           #keepScrollBarsVisible:Z
    :cond_35
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 8273
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 8279
    .end local v18           #done:Z
    .end local v22           #firstMove:Z
    :pswitch_2
    const/4 v10, 0x1

    move/from16 v0, p3

    int-to-float v8, v0

    move/from16 v0, p4

    int-to-float v9, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v3

    if-ne v10, v3, :cond_37

    .line 8280
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mLongPressForActionPopup:Z

    goto/16 :goto_0

    .line 8284
    :cond_37
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_3d

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-ne v3, v4, :cond_3d

    .line 8286
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent -  ACTION_UP event - Set the Cursor "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8288
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    .line 8289
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3c

    .line 8291
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent -  SCH_START_VISIBLE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8292
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 8295
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/webkit/WebView;->mLongPressForActionPopup:Z

    if-ne v3, v4, :cond_3a

    .line 8296
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 8298
    .local v30, selectedType:Ljava/lang/Integer;
    new-instance v29, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v3, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8299
    .local v29, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v29

    .line 8300
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 8301
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x213

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8304
    :cond_38
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8309
    :goto_d
    :try_start_2
    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8311
    invoke-virtual/range {v29 .. v29}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_39

    .line 8312
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 8314
    :cond_39
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mLongPressForActionPopup:Z

    .line 8323
    .end local v29           #res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v30           #selectedType:Ljava/lang/Integer;
    :cond_3a
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v3}, Ljava/util/TimerTask;->cancel()Z

    .line 8324
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 8325
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mIsSCHExpired:Z

    .line 8326
    new-instance v3, Landroid/webkit/WebView$SingleCursorTimerTask;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/webkit/WebView$SingleCursorTimerTask;-><init>(Landroid/webkit/WebView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/WebView;->mSCHTimerTask:Ljava/util/TimerTask;

    .line 8327
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mSCHTimer:Ljava/util/Timer;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mSCHTimerTask:Ljava/util/TimerTask;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v3, v4, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 8328
    const/16 v3, 0x66

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->iAlpha:I

    .line 8330
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3b

    .line 8331
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->isSCHCompletelyDrawn:Z

    .line 8335
    :cond_3b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 8337
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    if-eqz v3, :cond_3e

    .line 8340
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent -SCH is tocuhed so It will not operate the Touch event on Editor "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8305
    .restart local v29       #res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .restart local v30       #selectedType:Ljava/lang/Integer;
    :catch_0
    move-exception v19

    .line 8306
    .local v19, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8307
    const-string/jumbo v3, "webview"

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 8309
    .end local v19           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 8316
    .end local v29           #res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v30           #selectedType:Ljava/lang/Integer;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    if-eqz v3, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->isTouchedSCH:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 8318
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent -  SCH_TOUCH_UP"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8319
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 8320
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mMoveIsStarted:Z

    goto/16 :goto_e

    .line 8346
    :cond_3d
    const-string/jumbo v3, "webview"

    const-string v4, " singleCursorHandlerTouchEvent -getEditableSupport  FASLE "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8350
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isFocused()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 8352
    :cond_3f
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 8353
    new-instance v31, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v31 .. v31}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 8354
    .restart local v31       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 8355
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 8356
    move/from16 v0, p2

    move-object/from16 v1, v31

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 8357
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 8358
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 8359
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 8360
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 8361
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 8362
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v31

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 8363
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    move-object/from16 v0, v31

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 8364
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8365
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v31

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 8366
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 8367
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8369
    .end local v31           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_40
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 8370
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    if-eqz v3, :cond_41

    .line 8371
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollY:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mAutoScrollX:I

    .line 8373
    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    packed-switch v3, :pswitch_data_1

    .line 8517
    :cond_42
    :goto_f
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_0

    .line 8375
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8376
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8379
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_44

    .line 8380
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v23

    .line 8381
    .local v23, hitTest:Landroid/webkit/WebView$HitTestResult;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_44

    if-eqz v23, :cond_43

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static/range {v23 .. v23}, Landroid/webkit/WebView$HitTestResult;->access$1700(Landroid/webkit/WebView$HitTestResult;)I

    move-result v3

    if-nez v3, :cond_44

    .line 8383
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f

    .line 8389
    .end local v23           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_44
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_45

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    if-eqz v3, :cond_46

    .line 8390
    :cond_45
    new-instance v31, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v31 .. v31}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 8391
    .restart local v31       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 8392
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    aput v5, v3, v4

    .line 8393
    const/16 v3, 0x200

    move-object/from16 v0, v31

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 8394
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 8395
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 8396
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/Point;

    move-object/from16 v0, v31

    iput-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 8397
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Point;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v5, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v3, v4

    .line 8398
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 8399
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move-object/from16 v0, v31

    iput-boolean v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 8400
    move-object/from16 v0, v31

    iget-object v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v3, v4}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mNativeLayer:I

    .line 8403
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v3}, Landroid/webkit/WebView$TouchEventQueue;->nextTouchSequence()J

    move-result-wide v3

    move-object/from16 v0, v31

    iput-wide v3, v0, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 8404
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 8405
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x8d

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_f

    .line 8406
    .end local v31           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_46
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_42

    .line 8407
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mLastTouchX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mLastTouchY:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/ZoomManager;->handleDoubleTap(FF)V

    .line 8408
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_f

    .line 8414
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8415
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8416
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    if-eqz v3, :cond_4a

    .line 8417
    const-string/jumbo v3, "webview"

    const-string v4, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8419
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_49

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v3

    if-gtz v3, :cond_47

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v3

    if-lez v3, :cond_49

    .line 8435
    :cond_47
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 8438
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8471
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8472
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 8475
    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    sub-long v3, v20, v3

    const-wide/16 v8, 0xfa

    cmp-long v3, v3, v8

    if-gtz v3, :cond_50

    .line 8476
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_4e

    .line 8477
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8492
    :cond_48
    :goto_10
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 8493
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    goto/16 :goto_f

    .line 8445
    :cond_49
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_f

    .line 8449
    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_4b

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 8452
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/webkit/WebView;->nativeHitSelection(II)Z

    move-result v3

    if-nez v3, :cond_42

    .line 8453
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectionDone()V

    goto/16 :goto_f

    .line 8459
    :cond_4b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4d

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomIn()Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 8461
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_f

    .line 8465
    :cond_4d
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    goto/16 :goto_f

    .line 8484
    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;

    if-eqz v3, :cond_4f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    cmp-long v3, v3, v8

    if-eqz v3, :cond_48

    .line 8485
    :cond_4f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_10

    .line 8496
    :cond_50
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollY:I

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v14

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 8499
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8503
    :cond_51
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 8504
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8510
    :pswitch_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 8511
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 8512
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v3, :cond_42

    .line 8513
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_f

    .line 8521
    :pswitch_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_52

    .line 8522
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollY:I

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v14

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 8524
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8526
    :cond_52
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 8527
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_0

    .line 7803
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 8373
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 5687
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5688
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5690
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5692
    :cond_1
    return-void
.end method

.method private hitFocusedPlugin(II)Z
    .locals 1
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    .line 7605
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hitTestResult(Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;
    .locals 8
    .parameter "fallback"

    .prologue
    const/4 v7, 0x7

    .line 2851
    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v5, :cond_1

    .line 2852
    const/4 v2, 0x0

    .line 2903
    :cond_0
    :goto_0
    return-object v2

    .line 2855
    :cond_1
    new-instance v2, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$HitTestResult;-><init>(Landroid/webkit/WebView;)V

    .line 2856
    .local v2, result:Landroid/webkit/WebView$HitTestResult;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2857
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2858
    const/16 v5, 0x9

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$1000(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2889
    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    .line 2890
    .local v4, type:I
    if-eqz v4, :cond_3

    if-ne v4, v7, :cond_0

    .line 2893
    :cond_3
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v6, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2894
    .local v0, contentX:I
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v6, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2895
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2896
    .local v3, text:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2897
    if-nez v4, :cond_9

    const/4 v5, 0x5

    :goto_2
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$1000(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2900
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$1100(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_0

    .line 2860
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v3           #text:Ljava/lang/String;
    .end local v4           #type:I
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v3

    .line 2861
    .restart local v3       #text:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2862
    const-string/jumbo v5, "tel:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2863
    const/4 v5, 0x2

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$1000(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2864
    const-string/jumbo v5, "tel:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$1100(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2865
    :cond_5
    const-string/jumbo v5, "mailto:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2866
    const/4 v5, 0x4

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$1000(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2867
    const-string/jumbo v5, "mailto:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$1100(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2868
    :cond_6
    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2869
    const/4 v5, 0x3

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$1000(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2870
    const-string v5, "geo:0,0?q="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$1100(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2872
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2873
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v7}, Landroid/webkit/WebView$HitTestResult;->access$1000(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2874
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$1100(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2878
    .end local v3           #text:Ljava/lang/String;
    :cond_8
    if-eqz p1, :cond_2

    .line 2886
    const-string/jumbo v5, "webview"

    const-string v6, "hitTestResult use fallback"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    move-object v2, p1

    goto/16 :goto_1

    .line 2897
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    .restart local v3       #text:Ljava/lang/String;
    .restart local v4       #type:I
    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_2
.end method

.method private inEditingMode()Z
    .locals 1

    .prologue
    .line 2740
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inFullScreenMode()Z
    .locals 1

    .prologue
    .line 7619
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1513
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/WebView$OnTrimMemoryListener;->init(Landroid/content/Context;)V

    .line 1515
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 1516
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1517
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1518
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 1519
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 1521
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1522
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 1523
    .local v2, slop:I
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 1525
    iget v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquareForFinger:I

    .line 1526
    add-int/lit8 v2, v2, 0x4

    .line 1527
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquareForSPen:I

    .line 1529
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 1530
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    .line 1531
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1534
    .local v1, density:F
    const/high16 v3, 0x4180

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1535
    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, v1}, Landroid/webkit/ZoomManager;->init(F)V

    .line 1536
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaximumFling:I

    .line 1539
    const/high16 v3, 0x3f80

    mul-float v4, v1, v1

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->DRAG_LAYER_INVERSE_DENSITY_SQUARED:F

    .line 1541
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    .line 1542
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    .line 1543
    new-instance v3, Landroid/webkit/WebClipboard;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebClipboard;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    .line 1544
    iget-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->initWebClipboard()V

    .line 1546
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getScrollBarStyle()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1549
    new-instance v3, Ljava/util/Vector;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    .line 1550
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 1552
    sget-boolean v3, Landroid/webkit/WebView;->USE_TOUCHOPTIMIZER:Z

    if-eqz v3, :cond_0

    .line 1553
    new-instance v3, Landroid/webkit/PointerDevice$TouchOptimizer;

    invoke-direct {v3, p0}, Landroid/webkit/PointerDevice$TouchOptimizer;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;

    .line 1554
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getMotionFilter()I

    move-result v3

    invoke-static {v3}, Landroid/webkit/PointerDevice$MotionFilter;->setMotionFilter(I)V

    .line 1557
    :cond_0
    return-void
.end method

.method private injectAccessibilityForUrl(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4154
    iget-object v5, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v5, :cond_0

    .line 4197
    :goto_0
    return-void

    .line 4157
    :cond_0
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 4159
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4161
    invoke-direct {p0, v4}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    .line 4165
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4167
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    .line 4172
    :cond_2
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->getAxsUrlParameterValue(Ljava/lang/String;)I

    move-result v1

    .line 4173
    .local v1, axsParameterValue:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    .line 4174
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_script_injection"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 4176
    .local v2, onDeviceScriptInjectionEnabled:Z
    :goto_1
    if-eqz v2, :cond_4

    .line 4177
    invoke-direct {p0, v4}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    .line 4179
    const-string/jumbo v4, "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'https://ssl.gstatic.com/accessibility/javascript/android/AndroidScriptChooser.user.js\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4182
    iput-boolean v3, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    goto :goto_0

    .end local v2           #onDeviceScriptInjectionEnabled:Z
    :cond_3
    move v2, v4

    .line 4174
    goto :goto_1

    .line 4185
    .restart local v2       #onDeviceScriptInjectionEnabled:Z
    :cond_4
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    .line 4187
    .end local v2           #onDeviceScriptInjectionEnabled:Z
    :cond_5
    if-nez v1, :cond_6

    .line 4189
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    goto :goto_0

    .line 4190
    :cond_6
    if-ne v1, v3, :cond_7

    .line 4191
    invoke-direct {p0, v4}, Landroid/webkit/WebView;->ensureAccessibilityScriptInjectorInstance(Z)V

    .line 4193
    const-string/jumbo v3, "javascript:(function() {    var chooser = document.createElement(\'script\');    chooser.type = \'text/javascript\';    chooser.src = \'https://ssl.gstatic.com/accessibility/javascript/android/AndroidScriptChooser.user.js\';    document.getElementsByTagName(\'head\')[0].appendChild(chooser);  })();"

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 4195
    :cond_7
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL value for the \"axs\" URL parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 3157
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    .line 3158
    return-void
.end method

.method private isEnterActionKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 6198
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 3

    .prologue
    .line 1619
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 9056
    packed-switch p1, :pswitch_data_0

    .line 9066
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyCode must be one of {KEYCODE_DPAD_UP, KEYCODE_DPAD_RIGHT, KEYCODE_DPAD_DOWN, KEYCODE_DPAD_LEFT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9058
    :pswitch_0
    const/4 v0, 0x2

    .line 9064
    :goto_0
    return v0

    .line 9060
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 9062
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 9064
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 9056
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPageHandleNavKey(IJZI)V
    .locals 13
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"
    .parameter "metaState"

    .prologue
    .line 11664
    if-eqz p4, :cond_0

    .line 11665
    const/4 v5, 0x0

    .line 11666
    .local v5, keyEventAction:I
    const/16 v12, 0x67

    .line 11667
    .local v12, eventHubAction:I
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 11673
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    and-int/lit8 v1, p5, 0x1

    and-int/lit8 v2, p5, 0x2

    or-int/2addr v1, v2

    and-int/lit8 v2, p5, 0x4

    or-int v8, v1, v2

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 11678
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v12, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11679
    return-void

    .line 11669
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    .end local v12           #eventHubAction:I
    :cond_0
    const/4 v5, 0x1

    .line 11670
    .restart local v5       #keyEventAction:I
    const/16 v12, 0x68

    .restart local v12       #eventHubAction:I
    goto :goto_0
.end method

.method private loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 2424
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2425
    .local v0, dataUrl:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2426
    const-string v1, "base64"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2427
    const-string v1, ";base64"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2429
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;)V

    .line 2432
    return-void
.end method

.method private loadUrlImpl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 2364
    if-nez p1, :cond_0

    .line 2368
    :goto_0
    return-void

    .line 2367
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    invoke-static {p1}, Landroid/webkit/WebViewUtils;->processUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    return-void
.end method

.method private native nativeCacheHitFramePointer()I
.end method

.method private native nativeCacheHitIsPlugin()Z
.end method

.method private native nativeCacheHitNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCacheHitNodePointer()I
.end method

.method private native nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeCreate(ILjava/lang/String;Z)V
.end method

.method private native nativeCursorFramePointer()I
.end method

.method private native nativeCursorIntersects(Landroid/graphics/Rect;)Z
.end method

.method private native nativeCursorIsAnchor()Z
.end method

.method private native nativeCursorIsTextInput()Z
.end method

.method private native nativeCursorNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCursorNodePointer()I
.end method

.method private native nativeCursorPosition()Landroid/graphics/Point;
.end method

.method private native nativeCursorText()Ljava/lang/String;
.end method

.method private native nativeCursorWantsKeyEvents()Z
.end method

.method private native nativeDebugDump()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IIZ)I
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEvaluateLayersAnimations(I)Z
.end method

.method private native nativeExtendSelection(II)V
.end method

.method private native nativeFindAll(Ljava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeFindIndex()I
.end method

.method private native nativeFindNext(Z)V
.end method

.method private native nativeFocusCandidateIsRtlText()Z
.end method

.method private native nativeFocusCandidateIsTextInput()Z
.end method

.method private native nativeFocusCandidateLayerId()I
.end method

.method private native nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateText()Ljava/lang/String;
.end method

.method private native nativeFocusCandidateType()I
.end method

.method private native nativeFocusIsPlugin()Z
.end method

.method private native nativeFocusNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetBackgroundColor()I
.end method

.method private native nativeGetBaseLayer()I
.end method

.method private native nativeGetClosestWordPosition(II)Landroid/graphics/Point;
.end method

.method private native nativeGetCursorRingBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetDrawGLFunction(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;FI)I
.end method

.method private native nativeGetImageSize(II)Landroid/graphics/Rect;
.end method

.method private native nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeGetSelectionHandles(I[I)V
.end method

.method private native nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V
.end method

.method private native nativeHasContent()Z
.end method

.method private native nativeHasCursorNode()Z
.end method

.method private native nativeHasFocusNode()Z
.end method

.method private native nativeHideCursor()V
.end method

.method private native nativeHitSelection(II)Z
.end method

.method private native nativeImageURI(II)Ljava/lang/String;
.end method

.method private native nativeInstrumentReport()V
.end method

.method private native nativeIsTouchingEventListener(II)Z
.end method

.method private native nativeLayerBounds(I)Landroid/graphics/Rect;
.end method

.method private native nativeMotionUp(III)Z
.end method

.method private native nativeMoveCursor(IIZ)Z
.end method

.method private native nativeMoveGeneration()I
.end method

.method private native nativeMoveSelection(II)V
.end method

.method private static native nativeOnTrimMemory(I)V
.end method

.method private native nativePageShouldHandleShiftAndArrows()Z
.end method

.method private native nativePointInNavCache(III)Z
.end method

.method private native nativeRegisterPageSwapCallback()V
.end method

.method private native nativeReplaceBaseContent(I)V
.end method

.method private native nativeResetSelection()V
.end method

.method private native nativeScrollLayer(III)Z
.end method

.method private native nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
.end method

.method private native nativeSelectAll()V
.end method

.method private native nativeSelectAt(II)V
.end method

.method private native nativeSelectBestAt(Landroid/graphics/Rect;)V
.end method

.method private native nativeSelectableText()Landroid/graphics/Point;
.end method

.method private native nativeSelectionX()I
.end method

.method private native nativeSelectionY()I
.end method

.method private native nativeSetBaseLayer(ILandroid/graphics/Region;ZZZ)V
.end method

.method private native nativeSetExtendSelection()V
.end method

.method private native nativeSetFindIsEmpty()V
.end method

.method private native nativeSetFindIsUp(Z)V
.end method

.method private native nativeSetFocusRingAnimation()V
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private native nativeSetIsScrolling(Z)V
.end method

.method private native nativeSetIsZooming(Z)V
.end method

.method private static native nativeSetPauseDrawing(IZ)V
.end method

.method private native nativeSetSelectionPointer(IZFII)V
.end method

.method private native nativeShouldDrawFocusRing()Z
.end method

.method private native nativeShowCursorTimed()V
.end method

.method private native nativeStartSelection(II)Z
.end method

.method private native nativeStopGL()V
.end method

.method private native nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method private native nativeTextGeneration()I
.end method

.method private native nativeTileProfilingClear()V
.end method

.method private native nativeTileProfilingGetFloat(IILjava/lang/String;)F
.end method

.method private native nativeTileProfilingGetInt(IILjava/lang/String;)I
.end method

.method private native nativeTileProfilingNumFrames()I
.end method

.method private native nativeTileProfilingNumTilesInFrame(I)I
.end method

.method private native nativeTileProfilingStart()V
.end method

.method private native nativeTileProfilingStop()F
.end method

.method private native nativeUpdateCachedTextfield(Ljava/lang/String;I)V
.end method

.method private native nativeUpdateDrawGLFunction(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
.end method

.method private native nativeUseHardwareAccelSkia(Z)V
.end method

.method private native nativeWordSelection(II)Z
.end method

.method private navHandledKey(IIZJ)Z
    .locals 11
    .parameter "keyCode"
    .parameter "count"
    .parameter "noScroll"
    .parameter "time"

    .prologue
    .line 11684
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v8, :cond_1

    .line 11685
    const/4 v1, 0x0

    .line 11739
    :cond_0
    :goto_0
    return v1

    .line 11687
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    .line 11688
    iput-wide p4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 11689
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    .line 11690
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeMoveCursor(IIZ)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v1, 0x1

    .line 11697
    .local v1, keyHandled:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 11700
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 11701
    .local v0, contentCursorRingBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 11702
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 11704
    .local v6, viewCursorRingBounds:Landroid/graphics/Rect;
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/webkit/WebView;->mLastTouchX:I

    .line 11705
    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iput v8, p0, Landroid/webkit/WebView;->mLastTouchY:I

    .line 11706
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v8, :cond_0

    .line 11709
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 11710
    .local v7, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v7}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 11711
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11712
    .local v5, outset:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 11713
    .local v3, maxXScroll:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v4, v8, 0x2

    .line 11714
    .local v4, maxYScroll:I
    neg-int v8, v3

    neg-int v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 11715
    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 11719
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 11721
    .local v2, maxH:I
    if-lez v2, :cond_4

    .line 11722
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 11730
    :cond_2
    :goto_2
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 11731
    iget-object v8, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 11738
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    goto/16 :goto_0

    .line 11690
    .end local v0           #contentCursorRingBounds:Landroid/graphics/Rect;
    .end local v1           #keyHandled:Z
    .end local v2           #maxH:I
    .end local v3           #maxXScroll:I
    .end local v4           #maxYScroll:I
    .end local v5           #outset:Landroid/graphics/Rect;
    .end local v6           #viewCursorRingBounds:Landroid/graphics/Rect;
    .end local v7           #visRect:Landroid/graphics/Rect;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 11724
    .restart local v0       #contentCursorRingBounds:Landroid/graphics/Rect;
    .restart local v1       #keyHandled:Z
    .restart local v2       #maxH:I
    .restart local v3       #maxXScroll:I
    .restart local v4       #maxYScroll:I
    .restart local v5       #outset:Landroid/graphics/Rect;
    .restart local v6       #viewCursorRingBounds:Landroid/graphics/Rect;
    .restart local v7       #visRect:Landroid/graphics/Rect;
    :cond_4
    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    neg-int v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 11726
    if-gez v2, :cond_2

    .line 11727
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, v2, v8, v9, v10}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_2
.end method

.method private offsetByLayerScrollPosition(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "box"

    .prologue
    .line 5302
    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateLayerId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5304
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 5307
    :cond_0
    return-void
.end method

.method private onZoomAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5340
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5344
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setVisibility(I)V

    .line 5347
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEnablePerformanceTest()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5348
    :cond_1
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->nativeSetIsZooming(Z)V

    .line 5350
    :cond_2
    return-void
.end method

.method private onZoomAnimationStart()V
    .locals 2

    .prologue
    .line 5329
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5330
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setVisibility(I)V

    .line 5333
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEnablePerformanceTest()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5334
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeSetIsZooming(Z)V

    .line 5336
    :cond_2
    return-void
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 9678
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 9679
    return-void
.end method

.method private passMultiTouchToWebKit(Landroid/view/MotionEvent;J)V
    .locals 9
    .parameter "ev"
    .parameter "sequence"

    .prologue
    .line 8557
    new-instance v2, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 8558
    .local v2, ted:Landroid/webkit/WebViewCore$TouchEventData;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 8559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 8560
    .local v1, count:I
    new-array v5, v1, [I

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    .line 8561
    new-array v5, v1, [Landroid/graphics/Point;

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    .line 8562
    new-array v5, v1, [Landroid/graphics/Point;

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    .line 8563
    const/4 v0, 0x0

    .local v0, c:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 8564
    iget-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mIds:[I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    aput v6, v5, v0

    .line 8565
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    .line 8566
    .local v3, x:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    .line 8567
    .local v4, y:I
    iget-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPoints:[Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v0

    .line 8568
    iget-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mPointsInView:[Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v0

    .line 8563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8570
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    iget v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    iget v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 8572
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mActionIndex:I

    .line 8574
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    iput v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 8575
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 8576
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, v2, Landroid/webkit/WebViewCore$TouchEventData;->mMotionEvent:Landroid/view/MotionEvent;

    .line 8577
    iput-wide p2, v2, Landroid/webkit/WebViewCore$TouchEventData;->mSequence:J

    .line 8578
    iget-object v5, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v5, v2}, Landroid/webkit/WebView$TouchEventQueue;->preQueueTouchEventData(Landroid/webkit/WebViewCore$TouchEventData;)V

    .line 8579
    iget-object v5, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v6, 0x8d

    invoke-virtual {v5, v6, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 8580
    invoke-virtual {p0}, Landroid/webkit/WebView;->cancelLongPress()V

    .line 8581
    iget-object v5, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 8582
    return-void
.end method

.method static pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 2970
    if-ge p2, p1, :cond_1

    .line 2972
    const/4 p0, 0x0

    .line 2981
    :cond_0
    :goto_0
    return p0

    .line 2974
    :cond_1
    if-gez p0, :cond_2

    .line 2975
    const/4 p0, 0x0

    goto :goto_0

    .line 2977
    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    .line 2978
    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 4027
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 4032
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 4033
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result p2

    .line 4034
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v3, p1, v0

    .line 4035
    .local v3, dx:I
    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v4, p2, v0

    .line 4037
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_0

    .line 4038
    const/4 v0, 0x0

    .line 4050
    :goto_0
    return v0

    .line 4040
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 4041
    if-eqz p3, :cond_2

    .line 4043
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4045
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 4046
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4050
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 4043
    :cond_1
    invoke-static {v3, v4}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v5

    goto :goto_1

    .line 4048
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private recordNewContentSize(IIZ)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 3172
    or-int v0, p1, p2

    if-nez v0, :cond_0

    .line 3195
    :goto_0
    return-void

    .line 3177
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-eq v0, p2, :cond_2

    .line 3179
    :cond_1
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 3180
    iput p2, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 3183
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v0, :cond_2

    .line 3185
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->updateScrollCoordinates(II)Z

    .line 3186
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3189
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalX(I)V

    .line 3190
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 3194
    :cond_2
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentSizeChanged(Z)V

    goto :goto_0
.end method

.method private removeAccessibilityApisFromJavaScript()V
    .locals 1

    .prologue
    .line 1591
    iget-object v0, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1592
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1593
    iget-object v0, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1594
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 1596
    :cond_0
    return-void
.end method

.method private removeTouchHighlight()V
    .locals 2

    .prologue
    .line 5023
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbb

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 5024
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5028
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setTouchHighlightRects(Ljava/util/ArrayList;)V

    .line 5029
    return-void
.end method

.method private requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V
    .locals 17
    .parameter "elementRect"
    .parameter "immediate"

    .prologue
    .line 9777
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    .line 9780
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v15

    invoke-direct {v1, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9790
    .local v1, content:Landroid/graphics/Rect;
    iget v12, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v8

    .line 9791
    .local v8, screenTop:I
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    .line 9792
    .local v5, screenBottom:I
    sub-int v2, v5, v8

    .line 9793
    .local v2, height:I
    const/4 v10, 0x0

    .line 9795
    .local v10, scrollYDelta:I
    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    if-le v12, v5, :cond_3

    .line 9796
    div-int/lit8 v3, v2, 0x3

    .line 9797
    .local v3, oneThirdOfScreenHeight:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v12

    mul-int/lit8 v13, v3, 0x2

    if-le v12, v13, :cond_2

    .line 9800
    iget v12, v4, Landroid/graphics/Rect;->top:I

    sub-int v10, v12, v8

    .line 9810
    .end local v3           #oneThirdOfScreenHeight:I
    :cond_0
    :goto_0
    iget v12, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v6

    .line 9811
    .local v6, screenLeft:I
    iget v12, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    .line 9812
    .local v7, screenRight:I
    sub-int v11, v7, v6

    .line 9813
    .local v11, width:I
    const/4 v9, 0x0

    .line 9815
    .local v9, scrollXDelta:I
    iget v12, v4, Landroid/graphics/Rect;->right:I

    if-le v12, v7, :cond_5

    iget v12, v4, Landroid/graphics/Rect;->left:I

    if-le v12, v6, :cond_5

    .line 9816
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-le v12, v11, :cond_4

    .line 9817
    iget v12, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v6

    add-int/2addr v9, v12

    .line 9830
    :cond_1
    :goto_1
    or-int v12, v10, v9

    if-eqz v12, :cond_7

    .line 9831
    if-nez p2, :cond_6

    const/4 v12, 0x1

    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v12, v13}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 9835
    :goto_3
    return-void

    .line 9804
    .end local v6           #screenLeft:I
    .end local v7           #screenRight:I
    .end local v9           #scrollXDelta:I
    .end local v11           #width:I
    .restart local v3       #oneThirdOfScreenHeight:I
    :cond_2
    iget v12, v4, Landroid/graphics/Rect;->top:I

    add-int v13, v8, v3

    sub-int v10, v12, v13

    goto :goto_0

    .line 9806
    .end local v3           #oneThirdOfScreenHeight:I
    :cond_3
    iget v12, v4, Landroid/graphics/Rect;->top:I

    if-ge v12, v8, :cond_0

    .line 9807
    iget v12, v4, Landroid/graphics/Rect;->top:I

    sub-int v10, v12, v8

    goto :goto_0

    .line 9819
    .restart local v6       #screenLeft:I
    .restart local v7       #screenRight:I
    .restart local v9       #scrollXDelta:I
    .restart local v11       #width:I
    :cond_4
    iget v12, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v7

    add-int/2addr v9, v12

    goto :goto_1

    .line 9821
    :cond_5
    iget v12, v4, Landroid/graphics/Rect;->left:I

    if-ge v12, v6, :cond_1

    .line 9822
    iget v12, v4, Landroid/graphics/Rect;->left:I

    sub-int v12, v6, v12

    sub-int/2addr v9, v12

    goto :goto_1

    .line 9831
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 9833
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_3
.end method

.method private resetTextSelectionTouchHandleFlag()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12188
    iput-boolean v0, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 12189
    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsControllerSelected:Z

    .line 12190
    iput-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 12191
    iput-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 12192
    iput v0, p0, Landroid/webkit/WebView;->mRequestNewSelection:I

    .line 12193
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v1, v1, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v0, v1, :cond_0

    .line 12194
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 12195
    :cond_0
    return-void
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 5
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 2149
    const-string/jumbo v3, "scrollX"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2150
    .local v1, sx:I
    const-string/jumbo v3, "scrollY"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2152
    .local v2, sy:I
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 2153
    iput-object p1, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 2155
    iput v1, p0, Landroid/view/View;->mScrollX:I

    .line 2156
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 2157
    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, p2}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    .line 2158
    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    .line 2159
    .local v0, scale:F
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2160
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 2162
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2163
    return-void
.end method

.method private saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 3
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
    .line 2517
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x93

    new-instance v2, Landroid/webkit/WebView$SaveWebArchiveMessage;

    invoke-direct {v2, p1, p2, p3}, Landroid/webkit/WebView$SaveWebArchiveMessage;-><init>(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2519
    return-void
.end method

.method private scaleTrackballX(FI)I
    .locals 4
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 9028
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 9029
    .local v1, xMove:I
    move v0, v1

    .line 9030
    .local v0, nextXMove:I
    if-lez v1, :cond_1

    .line 9031
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    .line 9032
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 9037
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 9038
    return v1

    .line 9034
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    .line 9035
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 9042
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 9043
    .local v1, yMove:I
    move v0, v1

    .line 9044
    .local v0, nextYMove:I
    if-lez v1, :cond_1

    .line 9045
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    .line 9046
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 9051
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 9052
    return v1

    .line 9048
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    .line 9049
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scrollLayerTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4008
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne p2, v0, :cond_0

    .line 4016
    :goto_0
    return-void

    .line 4011
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/webkit/WebView;->nativeScrollLayer(III)Z

    .line 4012
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 4013
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 4014
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 4015
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method private selectClosestWord(II)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 6810
    const/4 v7, 0x0

    .line 6811
    .local v7, result:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v9, :cond_2

    .line 6812
    invoke-direct {p0}, Landroid/webkit/WebView;->setUpAdvSelect()Z

    move-result v0

    if-nez v0, :cond_0

    move v8, v7

    .line 6837
    .end local v7           #result:Z
    .local v8, result:I
    :goto_0
    return v8

    .line 6817
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_0
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_1

    .line 6818
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    .line 6821
    :cond_1
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 6823
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6828
    iput-boolean v9, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 6829
    iput v9, p0, Landroid/webkit/WebView;->mRequestNewSelection:I

    .line 6830
    const/4 v7, 0x1

    .line 6832
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2

    .line 6833
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x223

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 6834
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->drawSelectionControl(Z)V

    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_2
    move v8, v7

    .line 6837
    .restart local v8       #result:I
    goto :goto_0
.end method

.method private sendMotionUp(IIIII)V
    .locals 5
    .parameter "touchGeneration"
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    .line 11591
    new-instance v1, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    .line 11593
    .local v1, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 11595
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iput p1, v1, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    .line 11596
    invoke-direct {p0}, Landroid/webkit/WebView;->shouldDrawUsingLightTouch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11597
    iput-boolean v4, v1, Landroid/webkit/WebViewCore$TouchUpData;->mUseLightTouch:Z

    .line 11600
    :cond_0
    iput p2, v1, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    .line 11601
    iput p3, v1, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    .line 11602
    iput p4, v1, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    .line 11603
    iput p5, v1, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    .line 11604
    iget-object v2, v1, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayerRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {p0, p4, p5, v2, v3}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$TouchUpData;->mNativeLayer:I

    .line 11606
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x8c

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11609
    instance-of v2, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_1

    move-object v2, p0

    .line 11611
    check-cast v2, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->onRecieveWebviewTouchUp()V

    .line 11612
    iget-object v2, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebView;->isTouchedSCH:Z

    if-eq v2, v4, :cond_1

    .line 11614
    const-string/jumbo v2, "webview"

    const-string/jumbo v3, "sendMotionUp::singleCursorHandlerTouchEvent -  SCH_START_VISIBLE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11615
    iget-object v2, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    iget-object v3, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;->isVisibleCursorHandler(I)V

    .line 11619
    :cond_1
    return-void
.end method

.method private sendMouseClick(II)V
    .locals 3
    .parameter "frame"
    .parameter "node"

    .prologue
    .line 11556
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 11557
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMouseClick nativeCursorFramePointer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nativeCursorNodePointer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11559
    return-void
.end method

.method private sendMoveFocus(II)V
    .locals 4
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 11543
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7f

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11545
    return-void
.end method

.method private sendMoveMouse(IIII)V
    .locals 3
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11549
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11551
    return-void
.end method

.method private sendMoveMouseIfLatest(ZZ)V
    .locals 5
    .parameter "removeFocus"
    .parameter "stopPaintingCaret"

    .prologue
    const/4 v1, 0x0

    .line 11571
    if-eqz p1, :cond_0

    .line 11572
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 11574
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x88

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 11577
    return-void

    :cond_1
    move v0, v1

    .line 11574
    goto :goto_0
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 4071
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_1

    .line 4095
    :cond_0
    :goto_0
    return v1

    .line 4078
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p1

    .line 4079
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p2

    .line 4080
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v2, :cond_3

    .line 4082
    if-eqz p2, :cond_2

    .line 4083
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4084
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4085
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 4086
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 4093
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_2
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v1, p3, v1}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4095
    :cond_3
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setContentScrollTo(II)Z
    .locals 6
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4256
    iget-boolean v4, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v4, :cond_1

    .line 4305
    :cond_0
    :goto_0
    return v2

    .line 4266
    :cond_1
    or-int v4, p1, p2

    if-nez v4, :cond_2

    .line 4270
    const/4 v0, 0x0

    .line 4271
    .local v0, vx:I
    const/4 v1, 0x0

    .line 4283
    .local v1, vy:I
    :goto_1
    if-nez p1, :cond_4

    if-ne p2, v3, :cond_4

    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-nez v4, :cond_4

    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 4286
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_3

    .line 4290
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 4291
    iput v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    goto :goto_0

    .line 4273
    .end local v0           #vx:I
    .end local v1           #vy:I
    :cond_2
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 4274
    .restart local v0       #vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .restart local v1       #vy:I
    goto :goto_1

    .line 4293
    :cond_3
    const/16 v4, 0x1f4

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0

    .line 4299
    :cond_4
    invoke-direct {p0, v0, v1, v2, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 4302
    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-eq v4, v0, :cond_5

    if-gez p1, :cond_6

    :cond_5
    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eq v4, v1, :cond_0

    if-ltz p2, :cond_0

    :cond_6
    move v2, v3

    .line 4303
    goto :goto_0
.end method

.method private setFindIsUp(Z)V
    .locals 1
    .parameter "isUp"

    .prologue
    .line 3827
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    .line 3828
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3830
    :goto_0
    return-void

    .line 3829
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetFindIsUp(Z)V

    goto :goto_0
.end method

.method private setTouchHighlightRects(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10991
    .local p1, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 10995
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    .line 10996
    if-eqz p1, :cond_1

    .line 10997
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 10998
    .local v1, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 11014
    .local v2, viewRect:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 11018
    .end local v1           #rect:Landroid/graphics/Rect;
    .end local v2           #viewRect:Landroid/graphics/Rect;
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->invalidate(Landroid/graphics/Rect;)V

    .line 11020
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private setUpAdvSelect()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6760
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_1

    .line 6776
    :cond_0
    :goto_0
    return v0

    .line 6761
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6764
    instance-of v2, p0, Landroid/webkit/HtmlComposerView;

    if-nez v2, :cond_2

    .line 6767
    iget-boolean v2, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 6771
    :cond_2
    iput-boolean v1, p0, Landroid/webkit/WebView;->mIsControllerSelected:Z

    .line 6772
    iput-boolean v0, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 6773
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 6774
    iput v0, p0, Landroid/webkit/WebView;->mController:I

    move v0, v1

    .line 6776
    goto :goto_0
.end method

.method private setUpSelect(ZII)Z
    .locals 6
    .parameter "selectWord"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6560
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_1

    .line 6621
    :cond_0
    :goto_0
    return v1

    .line 6561
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6562
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 6563
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 6564
    if-eqz p1, :cond_3

    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;->nativeWordSelection(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6565
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    goto :goto_0

    .line 6568
    :cond_3
    new-instance v3, Landroid/webkit/SelectActionModeCallback;

    invoke-direct {v3}, Landroid/webkit/SelectActionModeCallback;-><init>()V

    iput-object v3, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    .line 6569
    iget-object v3, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v3, p0}, Landroid/webkit/SelectActionModeCallback;->setWebView(Landroid/webkit/WebView;)V

    .line 6570
    iget-object v3, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_4

    .line 6573
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    goto :goto_0

    .line 6576
    :cond_4
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 6577
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    iput-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 6583
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v3}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6584
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6585
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6586
    .local v0, rect:Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 6587
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 6595
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 6596
    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    .line 6597
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    .line 6598
    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    .line 6599
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    .line 6600
    iget v1, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iget v3, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    .line 6603
    iget v1, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v1, :cond_6

    .line 6604
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-eq v1, v3, :cond_5

    .line 6605
    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    .line 6607
    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    .line 6610
    :cond_5
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-eq v1, v3, :cond_6

    .line 6611
    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    .line 6613
    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    .line 6617
    :cond_6
    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollX:I

    .line 6618
    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollX:I

    .line 6619
    iget v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/webkit/WebView;->mMinAutoScrollY:I

    .line 6620
    iget v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    add-int/lit8 v1, v1, -0x5

    iput v1, p0, Landroid/webkit/WebView;->mMaxAutoScrollY:I

    move v1, v2

    .line 6621
    goto/16 :goto_0

    .line 6588
    :cond_7
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v4

    if-le v3, v4, :cond_8

    .line 6589
    iget v3, p0, Landroid/view/View;->mScrollX:I

    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 6590
    iget v3, p0, Landroid/view/View;->mScrollY:I

    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectY:I

    goto/16 :goto_1

    .line 6592
    :cond_8
    iget v3, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 6593
    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mSelectY:I

    goto/16 :goto_1
.end method

.method private setupPackageListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1462
    const-class v4, Landroid/webkit/WebView;

    monitor-enter v4

    .line 1466
    :try_start_0
    sget-boolean v3, Landroid/webkit/WebView;->sPackageInstallationReceiverAdded:Z

    if-eqz v3, :cond_0

    .line 1467
    monitor-exit v4

    .line 1506
    :goto_0
    return-void

    .line 1470
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1471
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1472
    const-string/jumbo v3, "package"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1473
    new-instance v1, Landroid/webkit/WebView$PackageListener;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/webkit/WebView$PackageListener;-><init>(Landroid/webkit/WebView$1;)V

    .line 1474
    .local v1, packageListener:Landroid/content/BroadcastReceiver;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1475
    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkit/WebView;->sPackageInstallationReceiverAdded:Z

    .line 1476
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    new-instance v2, Landroid/webkit/WebView$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$1;-><init>(Landroid/webkit/WebView;)V

    .line 1505
    .local v2, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1476
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #packageListener:Landroid/content/BroadcastReceiver;
    .end local v2           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static declared-synchronized setupProxyListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1379
    const-class v3, Landroid/webkit/WebView;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/webkit/WebView;->sNotificationsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1390
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 1382
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1383
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1384
    new-instance v2, Landroid/webkit/WebView$ProxyReceiver;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroid/webkit/WebView$ProxyReceiver;-><init>(Landroid/webkit/WebView$1;)V

    sput-object v2, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    .line 1385
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Landroid/webkit/WebView;->sProxyReceiver:Landroid/webkit/WebView$ProxyReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1387
    .local v0, currentProxy:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1388
    invoke-static {v0}, Landroid/webkit/WebView;->handleProxyBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1379
    .end local v0           #currentProxy:Landroid/content/Intent;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private shouldDrawUsingLightTouch()Z
    .locals 1

    .prologue
    .line 4057
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldForwardTouchEvent()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7610
    iget-object v2, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v2, :cond_1

    .line 7612
    :cond_0
    :goto_0
    return v0

    .line 7611
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 7612
    :cond_2
    iget-boolean v2, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mPreventDefault:I

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private showMagnifier(IIZ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "isChanging"

    .prologue
    const/4 v7, 0x1

    .line 11936
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEnableMagnifier()Z

    move-result v3

    if-nez v3, :cond_0

    .line 11975
    :goto_0
    return-void

    .line 11940
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, p1

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v5, p2

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    invoke-virtual {v3, v4, v5, v6}, Landroid/webkit/WebTextSelectionControls;->getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I

    move-result v0

    .line 11943
    .local v0, handleType:I
    if-ne v7, p3, :cond_1

    .line 11944
    packed-switch v0, :pswitch_data_0

    .line 11971
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_2

    .line 11972
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v5

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/webkit/WebMagnifier;->show(IILandroid/graphics/Rect;F)V

    goto :goto_0

    .line 11946
    :pswitch_0
    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_1

    .line 11947
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11948
    .local v2, rtStart:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int p2, v3, v4

    .line 11949
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 11950
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iput v7, v3, Landroid/webkit/WebMagnifier;->mMode:I

    .line 11951
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v4}, Landroid/webkit/WebTextSelectionControls;->getHandleHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x14

    iput v4, v3, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    goto :goto_1

    .line 11956
    .end local v2           #rtStart:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_1

    .line 11957
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11958
    .local v1, rtEnd:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int p2, v3, v4

    .line 11959
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 11960
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    const/4 v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mMode:I

    goto :goto_1

    .line 11974
    .end local v1           #rtEnd:Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v3, p1, p2}, Landroid/webkit/WebMagnifier;->show(II)V

    goto/16 :goto_0

    .line 11944
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private singleCursorHandlerTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .locals 24
    .parameter "ev"
    .parameter "touchEvent"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12205
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12206
    .local v12, metric:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/Activity;

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 12208
    iget v0, v12, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    const/high16 v22, 0x42c8

    mul-float v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/webkit/WebSettings;->getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v7, v21, v22

    .line 12210
    .local v7, density:F
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "drawSingleCursorHandler density = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12212
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v6

    .line 12213
    .local v6, cursurRect:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    .line 12214
    .local v17, xCursorPosition:I
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    .line 12216
    .local v20, yCursorPosition:I
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 12217
    .local v14, visRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 12219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10806d1

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 12220
    .local v13, singleCursorhandler:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 12221
    .local v8, iSCHHeight:I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 12222
    .local v10, iSCHWidth:I
    int-to-float v0, v8

    move/from16 v21, v0

    mul-float v21, v21, v7

    move/from16 v0, v21

    float-to-int v9, v0

    .line 12223
    .local v9, iSCHHeightByDensity:I
    int-to-float v0, v10

    move/from16 v21, v0

    mul-float v21, v21, v7

    move/from16 v0, v21

    float-to-int v11, v0

    .line 12225
    .local v11, iSCHWidthByDensity:I
    div-int/lit8 v2, v11, 0x2

    .line 12226
    .local v2, TOUCH_X_LEFT:I
    div-int/lit8 v3, v11, 0x2

    .line 12227
    .local v3, TOUCH_X_RIGHT:I
    const/4 v5, 0x0

    .line 12228
    .local v5, TOUCH_Y_TOP:I
    move v4, v9

    .line 12230
    .local v4, TOUCH_Y_BOTTOM:I
    sub-int v15, v17, v2

    .line 12231
    .local v15, x1:I
    add-int v16, v17, v3

    .line 12232
    .local v16, x2:I
    add-int/lit8 v18, v20, 0x0

    .line 12233
    .local v18, y1:I
    add-int v19, v20, v4

    .line 12235
    .local v19, y2:I
    add-int v21, v20, v8

    iget v0, v14, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 12237
    sub-int v15, v17, v2

    .line 12238
    add-int v16, v17, v3

    .line 12239
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 12240
    sub-int v18, v20, v4

    .line 12241
    add-int/lit8 v19, v20, 0x0

    .line 12248
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 12282
    :cond_1
    :goto_0
    const/16 v21, 0x0

    :goto_1
    return v21

    .line 12251
    :pswitch_0
    move/from16 v0, p3

    if-le v0, v15, :cond_1

    move/from16 v0, p3

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    move/from16 v0, p4

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    move/from16 v0, p4

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 12253
    const/16 v21, 0x1

    goto :goto_1

    .line 12260
    :pswitch_1
    div-int/lit8 v21, v2, 0x2

    sub-int v21, v15, v21

    move/from16 v0, p3

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    div-int/lit8 v21, v3, 0x2

    add-int v21, v21, v16

    move/from16 v0, p3

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    add-int v21, v19, v4

    move/from16 v0, p4

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 12262
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 12263
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInActionMove:Z

    .line 12264
    const/16 v21, 0x1

    goto :goto_1

    .line 12268
    :cond_2
    const-string/jumbo v21, "webview"

    const-string v22, " @@@    singleCursorHandlerTouchEvent   NOT touched on Single Cursor image   @@@"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 12275
    :pswitch_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMoveSCH:Z

    goto :goto_0

    .line 12248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private spawnContentScrollTo(II)V
    .locals 4
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 4311
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    .line 4319
    :goto_0
    return-void

    .line 4316
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 4317
    .local v0, vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .line 4318
    .local v1, vy:I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0
.end method

.method private startDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8694
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 8696
    sput-boolean v1, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 8697
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8698
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 8700
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    if-nez v0, :cond_0

    .line 8701
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    .line 8704
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    if-eq v0, v1, :cond_2

    .line 8706
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    .line 8708
    :cond_2
    return-void
.end method

.method private startPrivateBrowsing()V
    .locals 2

    .prologue
    .line 2642
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPrivateBrowsingEnabled(Z)V

    .line 2643
    return-void
.end method

.method private startScrollingLayer(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 7648
    float-to-int v2, p1

    iget v3, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 7649
    .local v0, contentX:I
    float-to-int v2, p2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 7650
    .local v1, contentY:I
    iget-object v2, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebView;->mScrollingLayerBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->nativeScrollableLayer(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    .line 7652
    iget v2, p0, Landroid/webkit/WebView;->mCurrentScrollingLayerId:I

    if-eqz v2, :cond_0

    .line 7653
    const/16 v2, 0x9

    iput v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7655
    :cond_0
    return-void
.end method

.method private startTouch(FFJ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 8682
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iput v0, p0, Landroid/webkit/WebView;->mStartTouchX:I

    .line 8683
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iput v0, p0, Landroid/webkit/WebView;->mStartTouchY:I

    .line 8684
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 8685
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8686
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 8689
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8a

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 8691
    return-void
.end method

.method private stopTouch()V
    .locals 2

    .prologue
    .line 8772
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 8774
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 8775
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8776
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 8782
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 8783
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8784
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8788
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_3

    .line 8789
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    invoke-virtual {v0}, Landroid/webkit/OverScrollGlow;->releaseAll()V

    .line 8791
    :cond_3
    return-void
.end method

.method private textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .locals 20
    .parameter "ev"
    .parameter "touchEvent"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12290
    const/16 v16, 0x0

    .line 12291
    .local v16, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    .line 12297
    .local v12, eventTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12298
    const/4 v3, 0x0

    .line 12490
    :goto_0
    return v3

    .line 12299
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-nez v3, :cond_3

    .line 12301
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v4, v4, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v3, v4, :cond_1

    .line 12302
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v3}, Landroid/webkit/WebMagnifier;->hide()V

    .line 12305
    :cond_1
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->isContextMenuVisible:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    if-nez p2, :cond_2

    .line 12306
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->clearActionModes()V

    .line 12309
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 12315
    :cond_3
    packed-switch p2, :pswitch_data_0

    :cond_4
    :goto_1
    move/from16 v3, v16

    .line 12490
    goto :goto_0

    .line 12320
    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mIsControllerSelected:Z

    .line 12321
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 12324
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mIsControllerSelected:Z

    .line 12325
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1, v4}, Landroid/webkit/WebTextSelectionControls;->getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I

    move-result v15

    .line 12326
    .local v15, nHandle:I
    if-eqz v15, :cond_5

    .line 12327
    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/WebView;->mController:I

    .line 12328
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mIsControllerSelected:Z

    .line 12334
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsControllerSelected:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 12335
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 12336
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xd2

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 12337
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mActionMove:Z

    .line 12338
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 12339
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_6

    .line 12340
    move/from16 v0, p5

    float-to-int v3, v0

    move/from16 v0, p6

    float-to-int v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Landroid/webkit/WebView;->showMagnifier(IIZ)V

    .line 12342
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2, v12, v13}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 12343
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 12344
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    .line 12345
    const/16 v16, 0x1

    goto :goto_1

    .line 12360
    .end local v15           #nHandle:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsControllerSelected:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mLongPress:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 12364
    :cond_7
    if-ltz p3, :cond_8

    if-gez p4, :cond_9

    .line 12365
    :cond_8
    const-string/jumbo v3, "webview"

    const-string v4, " textSelectionTouchEvent negative point: validate for Extend selection "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12366
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 12368
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mLongPress:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_f

    .line 12372
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xd4

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 12374
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScale()F

    move-result v8

    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v9

    .line 12375
    .local v9, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xd4

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 12425
    .end local v9           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_b

    .line 12426
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "textSelectionTouchEvent : Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDeferTouchProcess = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTouchMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mTouchMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12431
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2, v12, v13}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 12434
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;

    if-eqz v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_d

    .line 12435
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 12438
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 12440
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEnableMagnifier()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 12441
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget v3, v3, Landroid/webkit/WebMagnifier;->mMode:I

    if-nez v3, :cond_12

    .line 12442
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move/from16 v0, p5

    float-to-int v4, v0

    move/from16 v0, p6

    float-to-int v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebMagnifier;->move(II)V

    .line 12451
    :cond_e
    :goto_3
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 12378
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_a

    .line 12382
    const/4 v14, 0x0

    .line 12383
    .local v14, moveForward:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mController:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/webkit/WebTextSelectionControls;->getHandleExtendPoint(IIILandroid/webkit/WebViewCore$SelectionCopiedData;)Landroid/graphics/Point;

    move-result-object v19

    .line 12384
    .local v19, value:Landroid/graphics/Point;
    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/Point;->x:I

    .line 12385
    .local v10, currX:I
    move-object/from16 v0, v19

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 12388
    .local v11, currY:I
    const/4 v14, 0x1

    .line 12395
    const/4 v3, 0x1

    if-ne v14, v3, :cond_11

    .line 12396
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/webkit/WebView;->mSmartSelection:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/webkit/WebView;->mActionMove:Z

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScale()F

    move-result v8

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v9

    .line 12399
    .restart local v9       #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 12400
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mActionMove:Z

    if-nez v3, :cond_10

    .line 12401
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xd5

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 12410
    :goto_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/webkit/WebView;->mActionMove:Z

    goto/16 :goto_2

    .line 12405
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xd2

    invoke-virtual {v3, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 12406
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0xd2

    invoke-virtual {v3, v4, v9}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_4

    .line 12416
    .end local v9           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_11
    const-string/jumbo v3, "webview"

    const-string v4, "Right Selection Controler never cross left side Controler ."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 12443
    .end local v10           #currX:I
    .end local v11           #currY:I
    .end local v14           #moveForward:Z
    .end local v19           #value:Landroid/graphics/Point;
    :cond_12
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget v4, v4, Landroid/webkit/WebMagnifier;->mMode:I

    if-ne v3, v4, :cond_13

    .line 12444
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 12445
    .local v18, rtStart:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move/from16 v0, p5

    float-to-int v4, v0

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebMagnifier;->move(II)V

    goto/16 :goto_3

    .line 12446
    .end local v18           #rtStart:Landroid/graphics/Rect;
    :cond_13
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget v4, v4, Landroid/webkit/WebMagnifier;->mMode:I

    if-ne v3, v4, :cond_e

    .line 12447
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 12448
    .local v17, rtEnd:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move/from16 v0, p5

    float-to-int v4, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebMagnifier;->move(II)V

    goto/16 :goto_3

    .line 12461
    .end local v17           #rtEnd:Landroid/graphics/Rect;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsControllerSelected:Z

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_16

    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_16

    .line 12464
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v3, :cond_15

    move-object/from16 v3, p0

    .line 12465
    check-cast v3, Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getConetextmenuVisibility()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 12466
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->clearSelection()V

    .line 12486
    :cond_14
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->resetTextSelectionTouchHandleFlag()V

    goto/16 :goto_1

    .line 12472
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/WebView;->mRequestNewSelection:I

    if-nez v3, :cond_14

    .line 12474
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->clearSelection()V

    goto :goto_5

    .line 12480
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/webkit/WebView;->mIsControllerSelected:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_17

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkit/WebView;->mRequestNewSelection:I

    if-ne v3, v4, :cond_14

    .line 12481
    :cond_17
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    .line 12482
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 12483
    const/16 v16, 0x1

    goto :goto_5

    .line 12315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSelection()V
    .locals 8

    .prologue
    .line 9401
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    .line 9413
    :goto_0
    return-void

    .line 9404
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x8a

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 9406
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v5, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 9407
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 9408
    .local v1, contentY:I
    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    .line 9409
    .local v3, slop:I
    new-instance v2, Landroid/graphics/Rect;

    sub-int v4, v0, v3

    sub-int v5, v1, v3

    add-int v6, v0, v3

    add-int v7, v1, v3

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9411
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 9412
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->hitTestResult(Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    goto :goto_0
.end method

.method private updateSelectionInfo(Landroid/webkit/WebViewCore$SelectionCopiedData;)V
    .locals 8
    .parameter "copyInfo"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 12053
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 12054
    .local v0, prevCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;
    iput-object p1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 12056
    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v1, :cond_c

    .line 12062
    iget-boolean v1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-nez v1, :cond_2

    .line 12063
    iput-boolean v3, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 12067
    iget-object v1, p0, Landroid/webkit/WebView;->mSelectCallbackUser:Landroid/webkit/SelectActionModeCallbackSec;

    if-eqz v1, :cond_1

    .line 12068
    iget-object v1, p0, Landroid/webkit/WebView;->mSelectCallbackUser:Landroid/webkit/SelectActionModeCallbackSec;

    iput-object v1, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    .line 12072
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v1, p0}, Landroid/webkit/SelectActionModeCallbackSec;->setWebView(Landroid/webkit/WebView;)V

    .line 12073
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_2

    .line 12075
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearSelection()V

    .line 12127
    :goto_1
    return-void

    .line 12070
    :cond_1
    new-instance v1, Landroid/webkit/SelectActionModeCallbackSec;

    invoke-direct {v1}, Landroid/webkit/SelectActionModeCallbackSec;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    goto :goto_0

    .line 12082
    :cond_2
    iget v1, p0, Landroid/webkit/WebView;->mRequestNewSelection:I

    if-ne v3, v1, :cond_3

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-ne v1, v3, :cond_3

    .line 12083
    iget v1, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:I

    invoke-direct {p0, v1, v2, v4}, Landroid/webkit/WebView;->showMagnifier(IIZ)V

    .line 12086
    iput v5, p0, Landroid/webkit/WebView;->mRequestNewSelection:I

    .line 12089
    :cond_3
    if-eqz v0, :cond_6

    iget v1, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    iget-object v2, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v2, v2, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eq v1, v2, :cond_6

    .line 12093
    iget-boolean v1, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-ne v1, v3, :cond_a

    .line 12096
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 12098
    :cond_5
    iput v3, p0, Landroid/webkit/WebView;->mController:I

    .line 12114
    :cond_6
    :goto_2
    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12116
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 12117
    iput-boolean v4, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 12126
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 12099
    :cond_8
    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    if-eq v1, v7, :cond_9

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    if-ne v1, v6, :cond_6

    .line 12101
    :cond_9
    iput v5, p0, Landroid/webkit/WebView;->mController:I

    goto :goto_2

    .line 12103
    :cond_a
    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-ne v1, v6, :cond_6

    .line 12104
    iget-object v1, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v1}, Landroid/webkit/WebMagnifier;->hide()V

    .line 12106
    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    if-ne v1, v3, :cond_b

    .line 12107
    const/4 v1, 0x6

    iput v1, p0, Landroid/webkit/WebView;->mController:I

    goto :goto_2

    .line 12109
    :cond_b
    iput v7, p0, Landroid/webkit/WebView;->mController:I

    goto :goto_2

    .line 12123
    :cond_c
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearSelection()V

    goto/16 :goto_1
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 3
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    .line 11114
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne p2, v0, :cond_0

    .line 11117
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->setSelectionFromWebKit(II)V

    .line 11119
    :cond_0
    return-void
.end method

.method private updateWebTextViewPosition()V
    .locals 8

    .prologue
    .line 5985
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5986
    .local v2, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 5989
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5990
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 5991
    .local v1, vBox:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->offsetByLayerScrollPosition(Landroid/graphics/Rect;)V

    .line 5992
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 5993
    invoke-static {v0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5994
    invoke-virtual {p0}, Landroid/webkit/WebView;->revealSelection()V

    .line 5996
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->updateWebTextViewPadding()V

    .line 5997
    return-void
.end method

.method private viewInvalidate()V
    .locals 0

    .prologue
    .line 11654
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11655
    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3136
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    .line 3137
    .local v1, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 3138
    .local v0, dy:I
    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v0

    int-to-float v4, p3

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 3142
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3147
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v8

    .line 3148
    .local v8, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v7

    .line 3149
    .local v7, dy:I
    int-to-float v0, p3

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-float v0, p4

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v4, v0, v7

    int-to-float v0, p5

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v0, p6

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v6, v0, v7

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 3154
    return-void
.end method


# virtual methods
.method EnableTextReadability()V
    .locals 4

    .prologue
    .line 1324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1327
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    const-string v3, "com.android.browser"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1331
    .local v1, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1333
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->EnableTextReadability(Z)V

    .line 1335
    :cond_0
    return-void
.end method

.method public GetLongPressForActioinPopup()Z
    .locals 1

    .prologue
    .line 4626
    iget-boolean v0, p0, Landroid/webkit/WebView;->mLongPressForActionPopup:Z

    return v0
.end method

.method public IsWordMisspelledAtPosition(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12499
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_0

    .line 12500
    const/4 v2, 0x0

    .line 12506
    :goto_0
    return v2

    .line 12501
    :cond_0
    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 12502
    .local v0, contentX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 12506
    .local v1, contentY:I
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebViewCore;->IsWordMisspelledAtPosition(II)Z

    move-result v2

    goto :goto_0
.end method

.method public SetLongPressForActioinPopup(Z)V
    .locals 0
    .parameter "_set"

    .prologue
    .line 4630
    iput-boolean p1, p0, Landroid/webkit/WebView;->mLongPressForActionPopup:Z

    .line 4631
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 4495
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4496
    if-nez p1, :cond_0

    .line 4503
    :goto_0
    return-void

    .line 4499
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4500
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 4501
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4502
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .parameter "watcher"

    .prologue
    .line 7354
    iput-object p1, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    .line 7355
    return-void
.end method

.method adjustDefaultZoomDensity(I)V
    .locals 3
    .parameter "zoomDensity"

    .prologue
    .line 1636
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 1638
    .local v0, density:F
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->updateDefaultZoomDensity(F)V

    .line 1639
    return-void
.end method

.method public applyreadability(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 12712
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 12713
    return-void
.end method

.method autoFillForm(I)V
    .locals 3
    .parameter "autoFillQueryId"

    .prologue
    .line 11816
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 11817
    return-void
.end method

.method calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3249
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3250
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3255
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3256
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3257
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3258
    return-void
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2547
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2548
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2549
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2550
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2551
    monitor-exit v0

    .line 2553
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 2555
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4
    .parameter "steps"

    .prologue
    const/4 v2, 0x0

    .line 2597
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2598
    iget-object v3, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2599
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2600
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2601
    monitor-exit v0

    .line 2604
    :goto_0
    return v2

    .line 2603
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v3

    add-int v1, v3, p1

    .line 2604
    .local v1, newIndex:I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 2606
    .end local v1           #newIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canGoForward()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2571
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2572
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2573
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2574
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2575
    monitor-exit v0

    .line 2577
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    goto :goto_0

    .line 2579
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canZoomIn()Z
    .locals 1

    .prologue
    .line 9366
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 9367
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1

    .prologue
    .line 9374
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 9375
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 2

    .prologue
    .line 2729
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2730
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2733
    :goto_0
    return-object v0

    .line 2731
    :cond_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 2732
    .local v0, result:Landroid/graphics/Picture;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeCopyBaseContentToPicture(Landroid/graphics/Picture;)V

    goto :goto_0
.end method

.method centerFitRect(Landroid/graphics/Rect;)V
    .locals 27
    .parameter "rect"

    .prologue
    .line 9630
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v17

    .line 9631
    .local v17, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 9632
    .local v12, rectHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    .line 9633
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v19

    .line 9634
    .local v19, viewHeight:I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v12

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 9636
    .local v18, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v18

    .line 9637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v23

    if-nez v23, :cond_0

    .line 9638
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    div-int/lit8 v24, v17, 0x2

    add-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v23

    div-int/lit8 v24, v20, 0x2

    sub-int v23, v23, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    div-int/lit8 v25, v12, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v24

    div-int/lit8 v25, v19, 0x2

    sub-int v24, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 9673
    :goto_0
    return-void

    .line 9642
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v5

    .line 9643
    .local v5, actualScale:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v10, v23, v24

    .line 9644
    .local v10, oldScreenX:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v15, v23, v18

    .line 9645
    .local v15, rectViewX:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v14, v23, v18

    .line 9646
    .local v14, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v7, v23, v18

    .line 9647
    .local v7, newMaxWidth:F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v14

    const/high16 v24, 0x4000

    div-float v8, v23, v24

    .line 9649
    .local v8, newScreenX:F
    cmpl-float v23, v8, v15

    if-lez v23, :cond_3

    .line 9650
    move v8, v15

    .line 9654
    :cond_1
    :goto_1
    mul-float v23, v10, v18

    mul-float v24, v8, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v21, v23, v24

    .line 9656
    .local v21, zoomCenterX:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v11, v23, v24

    .line 9658
    .local v11, oldScreenY:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v16, v23, v24

    .line 9659
    .local v16, rectViewY:F
    int-to-float v0, v12

    move/from16 v23, v0

    mul-float v13, v23, v18

    .line 9660
    .local v13, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v6, v23, v24

    .line 9661
    .local v6, newMaxHeight:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v23, v13

    const/high16 v24, 0x4000

    div-float v9, v23, v24

    .line 9663
    .local v9, newScreenY:F
    cmpl-float v23, v9, v16

    if-lez v23, :cond_4

    .line 9664
    move/from16 v9, v16

    .line 9668
    :cond_2
    :goto_2
    mul-float v23, v11, v18

    mul-float v24, v9, v5

    sub-float v23, v23, v24

    sub-float v24, v18, v5

    div-float v22, v23, v24

    .line 9670
    .local v22, zoomCenterY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 9671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/webkit/ZoomManager;->startZoomAnimation(FZ)Z

    goto/16 :goto_0

    .line 9651
    .end local v6           #newMaxHeight:F
    .end local v9           #newScreenY:F
    .end local v11           #oldScreenY:F
    .end local v13           #rectViewHeight:F
    .end local v16           #rectViewY:F
    .end local v21           #zoomCenterX:F
    .end local v22           #zoomCenterY:F
    :cond_3
    sub-float v23, v7, v15

    sub-float v23, v23, v14

    cmpl-float v23, v8, v23

    if-lez v23, :cond_1

    .line 9652
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v7, v15

    sub-float v8, v23, v24

    goto/16 :goto_1

    .line 9665
    .restart local v6       #newMaxHeight:F
    .restart local v9       #newScreenY:F
    .restart local v11       #oldScreenY:F
    .restart local v13       #rectViewHeight:F
    .restart local v16       #rectViewY:F
    .restart local v21       #zoomCenterX:F
    :cond_4
    sub-float v23, v6, v16

    sub-float v23, v23, v13

    cmpl-float v23, v9, v23

    if-lez v23, :cond_2

    .line 9666
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v24, v6, v16

    sub-float v9, v23, v24

    goto :goto_2
.end method

.method centerKeyPressOnTextField()V
    .locals 4

    .prologue
    .line 9491
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 9493
    return-void
.end method

.method public clearActionModes()V
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallback;->finish()V

    .line 1890
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    if-eqz v0, :cond_1

    .line 1891
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 1894
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    if-eqz v0, :cond_2

    .line 1895
    iget-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/FindActionModeCallback;->finish()V

    .line 1897
    :cond_2
    return-void
.end method

.method public clearCache(Z)V
    .locals 4
    .parameter "includeDiskFiles"

    .prologue
    const/4 v1, 0x0

    .line 3701
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3705
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x6f

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3707
    return-void

    :cond_0
    move v0, v1

    .line 3705
    goto :goto_0
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 3714
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3715
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3716
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 3718
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 3724
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3725
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 3726
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3727
    return-void
.end method

.method public clearImageSelection()V
    .locals 2

    .prologue
    .line 6979
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  clearImageSelection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6981
    iget-boolean v0, p0, Landroid/webkit/WebView;->isImageSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    if-eqz v0, :cond_0

    .line 6982
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "HtmlComposerView  clearImageSelection  Clearing selection"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6983
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->isImageSelected:Z

    .line 6984
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mImageCopyInfo:Landroid/webkit/WebViewCore$ImageSelectionCopiedData;

    .line 6985
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearSelection()V

    .line 6987
    :cond_0
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 3903
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3904
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3908
    :goto_0
    return-void

    .line 3906
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetFindIsEmpty()V

    .line 3907
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public clearSelection()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 7030
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-eqz v0, :cond_3

    .line 7034
    iput-boolean v1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 7035
    iput-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 7037
    const/4 v0, 0x1

    iget-object v2, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v2, v2, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v0, v2, :cond_0

    .line 7038
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 7043
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    if-eqz v0, :cond_1

    .line 7044
    const-string/jumbo v0, "webview"

    const-string v2, "clearSelection : mSelectCallbackSec.finish() called ."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7045
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallbackSec;->finish()V

    .line 7047
    :cond_1
    iput-object v3, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    .line 7051
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_2

    .line 7053
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 7054
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7060
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7062
    :cond_3
    return-void
.end method

.method public clearSslPreferences()V
    .locals 2

    .prologue
    .line 3734
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3735
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3736
    return-void
.end method

.method clearTextEntry()V
    .locals 1

    .prologue
    .line 2748
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2749
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    .line 2754
    :goto_0
    return-void

    .line 2752
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    goto :goto_0
.end method

.method public clearView()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2712
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2713
    iput v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2714
    iput v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2715
    const/4 v2, 0x0

    move-object v0, p0

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->setBaseLayer(ILandroid/graphics/Region;ZZZ)V

    .line 2716
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2717
    return-void
.end method

.method public clearViewState()V
    .locals 1

    .prologue
    .line 2258
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    .line 2259
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 2260
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2261
    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 3408
    iget v0, p0, Landroid/view/View;->mScrollX:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 3392
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    .line 3395
    .local v1, range:I
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 3396
    .local v2, scrollX:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 3397
    .local v0, overscrollRight:I
    if-gez v2, :cond_1

    .line 3398
    sub-int/2addr v1, v2

    .line 3403
    :cond_0
    :goto_0
    return v1

    .line 3399
    :cond_1
    if-le v2, v0, :cond_0

    .line 3400
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method computeMaxScrollX()I
    .locals 2

    .prologue
    .line 9165
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method computeMaxScrollY()I
    .locals 2

    .prologue
    .line 9173
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/16 v1, 0x9

    const/4 v9, 0x0

    .line 3953
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3954
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 3955
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 3956
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 3957
    .local v10, x:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 3958
    .local v11, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3960
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3961
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 3962
    .local v5, rangeX:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 3963
    .local v6, rangeY:I
    iget v7, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    .line 3966
    .local v7, overflingDistance:I
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v1, :cond_0

    .line 3967
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 3968
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 3969
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 3970
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollingLayerRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 3972
    const/4 v7, 0x0

    .line 3975
    :cond_0
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    move-object v0, p0

    move v8, v7

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 3979
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_1

    .line 3980
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move v1, v10

    move v2, v11

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->absorbGlow(IIIIII)V

    .line 4005
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v7           #overflingDistance:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_1
    :goto_0
    return-void

    .line 3983
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_2
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-eq v0, v1, :cond_5

    .line 3984
    iput v10, p0, Landroid/view/View;->mScrollX:I

    .line 3985
    iput v11, p0, Landroid/view/View;->mScrollY:I

    .line 3990
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 3991
    invoke-direct {p0, v9}, Landroid/webkit/WebView;->nativeSetIsScrolling(Z)V

    .line 3992
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_3

    .line 3993
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 3994
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_3

    .line 3995
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 3998
    :cond_3
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-ne v3, v0, :cond_4

    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-eq v4, v0, :cond_1

    .line 3999
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0

    .line 3988
    :cond_5
    invoke-direct {p0, v10, v11}, Landroid/webkit/WebView;->scrollLayerTo(II)V

    goto :goto_1

    .line 4003
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_6
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 3443
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 3438
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 3422
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    .line 3425
    .local v1, range:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 3426
    .local v2, scrollY:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    .line 3427
    .local v0, overscrollBottom:I
    if-gez v2, :cond_1

    .line 3428
    sub-int/2addr v1, v2

    .line 3433
    :cond_0
    :goto_0
    return v1

    .line 3429
    :cond_1
    if-le v2, v0, :cond_0

    .line 3430
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method protected contentInvalidateAll()V
    .locals 2

    .prologue
    .line 11837
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    .line 11838
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 11840
    :cond_0
    return-void
.end method

.method contentToViewDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 3095
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 3103
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 3111
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 3747
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3748
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 6690
    const/4 v1, 0x0

    .line 6691
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v4

    .line 6692
    .local v4, selection:Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string v5, ""

    if-eq v4, v5, :cond_3

    .line 6698
    const/4 v3, 0x0

    .line 6699
    .local v3, mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 6701
    .local v2, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_0

    .line 6702
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 6704
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v7}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6705
    :cond_1
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v6, 0x1040419

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 6708
    const/4 v1, 0x1

    .line 6711
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 6713
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, v4}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 6715
    .end local v0           #cm:Landroid/content/ClipboardManager;
    .end local v2           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3           #mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6716
    return v1
.end method

.method public copySelectionSec()Z
    .locals 6

    .prologue
    .line 6947
    const/4 v1, 0x0

    .line 6949
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUseDefaultClipboard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6950
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSelectionSec()Ljava/lang/String;

    move-result-object v2

    .line 6951
    .local v2, selection:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 6955
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x1040419

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 6958
    const/4 v1, 0x1

    .line 6959
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 6961
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 6973
    .end local v0           #cm:Landroid/content/ClipboardManager;
    .end local v2           #selection:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 6964
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_0

    .line 6965
    const/4 v1, 0x1

    .line 6968
    const-string v3, "Copy"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method cursorData()Landroid/webkit/WebViewCore$CursorData;
    .locals 3

    .prologue
    .line 5605
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorDataNoPosition()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v1

    .line 5606
    .local v1, result:Landroid/webkit/WebViewCore$CursorData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 5607
    .local v0, position:Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 5608
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 5609
    return-object v1
.end method

.method cursorDataNoPosition()Landroid/webkit/WebViewCore$CursorData;
    .locals 2

    .prologue
    .line 5613
    new-instance v0, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$CursorData;-><init>()V

    .line 5614
    .local v0, result:Landroid/webkit/WebViewCore$CursorData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    .line 5615
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    .line 5616
    return-object v0
.end method

.method public debugDump()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11768
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 11769
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDebugDump()V

    .line 11770
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 11771
    return-void
.end method

.method deleteSelection(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5627
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 5628
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    .line 5630
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 5632
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 1924
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1925
    invoke-direct {p0}, Landroid/webkit/WebView;->destroyImpl()V

    .line 1926
    return-void
.end method

.method dismissZoomControl()V
    .locals 1

    .prologue
    .line 9347
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 9348
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 7539
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 7563
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7566
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 7568
    :goto_1
    return v1

    .line 7541
    :pswitch_1
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7547
    :pswitch_2
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 7548
    .local v0, location:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7551
    const/4 v1, 0x0

    goto :goto_1

    .line 7555
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 7568
    .end local v0           #location:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 7539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected displaySoftKeyboard(Z)V
    .locals 7
    .parameter "isTextView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5658
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5662
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    move v1, v2

    .line 5663
    .local v1, zoom:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 5664
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:I

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebView;->mLastTouchY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 5665
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 5667
    :cond_0
    if-eqz p1, :cond_3

    .line 5668
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5669
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5670
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 5671
    if-eqz v1, :cond_1

    .line 5672
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    .line 5683
    :cond_1
    :goto_1
    return-void

    .end local v1           #zoom:Z
    :cond_2
    move v1, v3

    .line 5662
    goto :goto_0

    .line 5682
    .restart local v1       #zoom:Z
    :cond_3
    invoke-virtual {v0, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4470
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4471
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 3934
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3935
    if-nez p1, :cond_0

    .line 3939
    :goto_0
    return-void

    .line 3938
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v6, 0x0

    .line 4586
    iget-object v3, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne p2, v3, :cond_1

    .line 4591
    iget-object v3, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    sub-int v1, v3, v4

    .line 4592
    .local v1, tx:I
    const/4 v2, 0x0

    .line 4594
    .local v2, ty:I
    iget-object v3, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget v4, p0, Landroid/view/View;->mScrollX:I

    iget-object v5, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4595
    const/4 v0, 0x0

    .line 4596
    .local v0, newTop:I
    iget v3, p0, Landroid/webkit/WebView;->mTitleGravity:I

    if-nez v3, :cond_2

    .line 4597
    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4603
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v2, v3, v0

    .line 4605
    iget-object v3, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget-object v4, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    .line 4606
    iget-object v3, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTop(I)V

    .line 4609
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4610
    iget-object v3, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4611
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebView;->titleBarAnimation:Z

    .line 4612
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4621
    .end local v0           #newTop:I
    .end local v1           #tx:I
    .end local v2           #ty:I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v3

    return v3

    .line 4598
    .restart local v0       #newTop:I
    .restart local v1       #tx:I
    .restart local v2       #ty:I
    :cond_2
    iget v3, p0, Landroid/webkit/WebView;->mTitleGravity:I

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    .line 4599
    iget v0, p0, Landroid/view/View;->mScrollY:I

    goto :goto_0

    .line 4614
    :cond_3
    iget-boolean v3, p0, Landroid/webkit/WebView;->titleBarAnimation:Z

    if-eqz v3, :cond_4

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4615
    :cond_4
    iput-boolean v6, p0, Landroid/webkit/WebView;->titleBarAnimation:Z

    goto :goto_1
.end method

.method drawHistory()Z
    .locals 1

    .prologue
    .line 5578
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method public drawPage(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 11781
    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    .line 11782
    iget-object v2, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->nativeDraw(Landroid/graphics/Canvas;Landroid/graphics/RectF;IIZ)I

    .line 11783
    return-void
.end method

.method public drawSelectionControl()V
    .locals 1

    .prologue
    .line 7372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->drawSelectionControl(Z)V

    .line 7373
    return-void
.end method

.method public drawSelectionControl(Z)V
    .locals 2
    .parameter "isTextChanged"

    .prologue
    .line 7376
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7383
    :cond_0
    :goto_0
    return-void

    .line 7378
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 7379
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 7380
    if-eqz p1, :cond_0

    .line 7381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->textChangedForWatcher(Z)V

    goto :goto_0
.end method

.method public dumpDisplayTree()V
    .locals 1

    .prologue
    .line 6123
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 6124
    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v1, 0x0

    .line 6133
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xaa

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6134
    return-void

    :cond_0
    move v0, v1

    .line 6133
    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v1, 0x0

    .line 6143
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xab

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6144
    return-void

    :cond_0
    move v0, v1

    .line 6143
    goto :goto_0
.end method

.method public dumpV8Counters()V
    .locals 2

    .prologue
    .line 6174
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 6175
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6631
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 6635
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 6639
    :cond_0
    :goto_0
    return-void

    .line 6636
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 6638
    invoke-direct {p0, v2, v2, v2}, Landroid/webkit/WebView;->setUpSelect(ZII)Z

    goto :goto_0
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "command"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 11894
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_1

    .line 11919
    :cond_0
    :goto_0
    return-void

    .line 11896
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v4, v2, :cond_2

    instance-of v2, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-ne v4, v2, :cond_2

    .line 11898
    const-string/jumbo v2, "webview"

    const-string v3, "execEditorCommand To hide Cursor handler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11899
    iput-boolean v4, p0, Landroid/webkit/WebView;->mIsSCHExpired:Z

    .line 11900
    iget-object v2, p0, Landroid/webkit/WebView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    .line 11901
    iget-object v2, p0, Landroid/webkit/WebView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 11902
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 11905
    :cond_2
    new-instance v0, Landroid/webkit/WebView$CmdVal;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$CmdVal;-><init>(Landroid/webkit/WebView;)V

    .line 11906
    .local v0, cmdVal:Landroid/webkit/WebView$CmdVal;
    iput-object p1, v0, Landroid/webkit/WebView$CmdVal;->command:Ljava/lang/String;

    .line 11907
    iput-object p2, v0, Landroid/webkit/WebView$CmdVal;->value:Ljava/lang/String;

    .line 11908
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Copy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11909
    :cond_3
    monitor-enter v0

    .line 11910
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x203

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11912
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11917
    :goto_1
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 11913
    :catch_0
    move-exception v1

    .line 11914
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11915
    const-string/jumbo v2, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4462
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4463
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4562
    :try_start_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 4563
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/WebView$8;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$8;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4576
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4578
    return-void

    .line 4576
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 4
    .parameter "find"

    .prologue
    const/4 v0, 0x0

    .line 3771
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3772
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    .line 3777
    :goto_0
    return v0

    .line 3773
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/webkit/WebView;->nativeFindAll(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 3775
    .local v0, result:I
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3776
    iput-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    goto :goto_0
.end method

.method findIndex()I
    .locals 1

    .prologue
    .line 3836
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 3837
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFindIndex()I

    move-result v0

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 1
    .parameter "forward"

    .prologue
    .line 3759
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3760
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3762
    :goto_0
    return-void

    .line 3761
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeFindNext(Z)V

    goto :goto_0
.end method

.method public flingScroll(II)V
    .locals 11
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 9191
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 9192
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v10, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 9194
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 9195
    return-void
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 3690
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3691
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3692
    return-void
.end method

.method getBaseLayer()I
    .locals 1

    .prologue
    .line 5321
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 5322
    const/4 v0, 0x0

    .line 5324
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetBaseLayer()I

    move-result v0

    goto :goto_0
.end method

.method public getCaretState()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 4634
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4647
    :cond_0
    :goto_0
    return v2

    .line 4636
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4637
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v1

    .line 4638
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x20c

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4640
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4645
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4646
    const-string/jumbo v2, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCaretState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    .line 4641
    :catch_0
    move-exception v0

    .line 4642
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4645
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 1821
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1822
    iget-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 3562
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3563
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 3571
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method public getContentX()I
    .locals 3

    .prologue
    .line 8540
    iget v1, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8541
    .local v0, contentX:I
    return v0
.end method

.method public getContentY()I
    .locals 3

    .prologue
    .line 8546
    iget v1, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    .line 8547
    .local v0, contentY:I
    return v0
.end method

.method public getCursorRect(Z)Landroid/graphics/Rect;
    .locals 6
    .parameter "giveContentRect"

    .prologue
    const/4 v3, 0x0

    .line 7386
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7400
    :goto_0
    return-object v3

    .line 7388
    :cond_0
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v4

    .line 7389
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v1, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7390
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v2

    .line 7391
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x209

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7394
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7399
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7400
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    goto :goto_0

    .line 7395
    :catch_0
    move-exception v0

    .line 7396
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7397
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7399
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method getDefaultZoomScale()F
    .locals 1

    .prologue
    .line 9351
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getDefaultScale()F

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 3533
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3534
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3535
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHistoryPictureWidth()I
    .locals 1

    .prologue
    .line 5582
    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 2846
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2847
    iget-object v0, p0, Landroid/webkit/WebView;->mInitialHitTestResult:Landroid/webkit/WebView$HitTestResult;

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->hitTestResult(Landroid/webkit/WebView$HitTestResult;)Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1878
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1879
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageSelectRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 10440
    iget-object v0, p0, Landroid/webkit/WebView;->imageSelectRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getImageSize(II)Landroid/graphics/Rect;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8550
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8552
    :goto_0
    return-object v0

    .line 8551
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeGetImageSize(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 8552
    .local v0, rect:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public getNativeBrowser()Z
    .locals 1

    .prologue
    .line 5226
    iget-boolean v0, p0, Landroid/webkit/WebView;->mNativeBrowser:Z

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3511
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3512
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3513
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageBackgroundColor()I
    .locals 1

    .prologue
    .line 3578
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetBackgroundColor()I

    move-result v0

    return v0
.end method

.method getPluginBounds(II)Landroid/graphics/Rect;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 9596
    iget v1, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    .line 9597
    .local v0, slop:I
    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitIsPlugin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9598
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 9600
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 3554
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3555
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getReaderFlag()Z
    .locals 1

    .prologue
    .line 12706
    iget-boolean v0, p0, Landroid/webkit/WebView;->mReaderFlag:Z

    return v0
.end method

.method getReadingLevelScale()F
    .locals 1

    .prologue
    .line 2794
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getReadingLevelScale()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 2779
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2780
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v0

    return v0
.end method

.method public getSearchBox()Landroid/webkit/SearchBox;
    .locals 1

    .prologue
    .line 6723
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6724
    :cond_0
    const/4 v0, 0x0

    .line 6726
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v0

    goto :goto_0
.end method

.method getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6733
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const-string v0, ""

    .line 6734
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectionSec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6938
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 4525
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4526
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getTextHandleScale()F
    .locals 2

    .prologue
    .line 2785
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2786
    .local v0, density:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    div-float v1, v0, v1

    return v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3522
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3523
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3524
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getTitleHeight()I
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3545
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3546
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3497
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3498
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3499
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getViewHeight()I
    .locals 2

    .prologue
    .line 1805
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method getViewHeightWithTitle()I
    .locals 2

    .prologue
    .line 1809
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1810
    .local v0, height:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    .line 1811
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1813
    :cond_0
    return v0
.end method

.method getViewManager()Landroid/webkit/ViewManager;
    .locals 1

    .prologue
    .line 11820
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .locals 3

    .prologue
    .line 1753
    invoke-virtual {p0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 1754
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 1756
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    .line 1775
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1776
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 4435
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 4404
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebClipboard()Landroid/webkit/WebClipboard;
    .locals 1

    .prologue
    .line 4530
    iget-object v0, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkit/WebFeedLink;
    .locals 1

    .prologue
    .line 4415
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;
    .locals 8

    .prologue
    .line 6787
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    if-nez v4, :cond_1

    .line 6788
    :cond_0
    const/4 v4, 0x0

    .line 6799
    :goto_0
    return-object v4

    .line 6789
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6790
    .local v3, value:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    .line 6791
    .local v2, textSelected:Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6792
    .local v1, startRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6794
    .local v0, EndRect:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/webkit/WebTextSelectionControls;->SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 6799
    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    goto :goto_0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 4372
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .locals 1

    .prologue
    .line 9937
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9338
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 9339
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9340
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9341
    const/4 v0, 0x0

    .line 9343
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getExternalZoomPicker()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getZoomOverviewScale()F
    .locals 1

    .prologue
    .line 9359
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    return v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 2562
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2563
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->goBackOrForwardImpl(I)V

    .line 2564
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 0
    .parameter "steps"

    .prologue
    .line 2617
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2618
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->goBackOrForwardImpl(I)V

    .line 2619
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 2586
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2587
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->goBackOrForwardImpl(I)V

    .line 2588
    return-void
.end method

.method handleMultiTouchInWebView(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 8592
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/webkit/WebviewScaleGestureDetector;

    move-result-object v1

    .line 8597
    .local v1, detector:Landroid/webkit/WebviewScaleGestureDetector;
    if-nez v1, :cond_1

    .line 8649
    :cond_0
    :goto_0
    return-void

    .line 8599
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 8600
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 8602
    .local v3, y:F
    iget v4, p0, Landroid/webkit/WebView;->mPreventDefault:I

    if-eq v4, v8, :cond_3

    .line 8603
    invoke-virtual {v1, p1}, Landroid/webkit/WebviewScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8605
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8609
    invoke-direct {p0}, Landroid/webkit/WebView;->removeTouchHighlight()V

    .line 8613
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/WebviewScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 8617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 8618
    invoke-virtual {v1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v2

    .line 8619
    invoke-virtual {v1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 8621
    invoke-virtual {p0}, Landroid/webkit/WebView;->cancelLongPress()V

    .line 8622
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 8623
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->supportsPanDuringZoom()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8626
    iput v8, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 8627
    iget-object v4, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 8628
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8633
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8634
    .local v0, action:I
    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    .line 8635
    invoke-direct {p0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 8636
    const/4 v0, 0x0

    .line 8648
    :cond_4
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {p0, p1, v0, v4, v5}, Landroid/webkit/WebView;->handleTouchEventCommon(Landroid/view/MotionEvent;III)Z

    goto :goto_0

    .line 8637
    :cond_5
    const/4 v4, 0x6

    if-ne v0, v4, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-lt v4, v7, :cond_6

    .line 8639
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    .line 8640
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    goto :goto_1

    .line 8641
    :cond_6
    if-ne v0, v7, :cond_4

    .line 8643
    cmpg-float v4, v2, v6

    if-ltz v4, :cond_0

    cmpg-float v4, v3, v6

    if-gez v4, :cond_4

    goto/16 :goto_0
.end method

.method incrementTextGeneration()V
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return-void
.end method

.method initiateTextFieldDrag(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 9442
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9454
    :goto_0
    return-void

    .line 9445
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:I

    .line 9446
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:I

    .line 9447
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 9448
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9449
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 9451
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 9452
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 9453
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_0
.end method

.method public invokeZoomPicker()V
    .locals 2

    .prologue
    .line 2818
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2819
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2820
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    :goto_0
    return-void

    .line 2823
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2824
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->invokeZoomPicker()V

    goto :goto_0
.end method

.method public isEditableView()Z
    .locals 1

    .prologue
    .line 7310
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 3682
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 2637
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2638
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method isRectFitOnScreen(Landroid/graphics/Rect;)Z
    .locals 8
    .parameter "rect"

    .prologue
    .line 9609
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 9610
    .local v1, rectWidth:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 9611
    .local v0, rectHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v4

    .line 9612
    .local v4, viewWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v3

    .line 9613
    .local v3, viewHeight:I
    int-to-float v5, v4

    int-to-float v6, v1

    div-float/2addr v5, v6

    int-to-float v6, v3

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 9614
    .local v2, scale:F
    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v2

    .line 9615
    iget-object v5, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v5, v2}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    iget v6, p0, Landroid/view/View;->mScrollX:I

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    iget v6, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v6, v4

    if-gt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    if-lt v5, v6, :cond_0

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isSelectionHandleSelected(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 12038
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    invoke-virtual {v0, p1, p2, v1}, Landroid/webkit/WebTextSelectionControls;->getHandleType(IILandroid/webkit/WebViewCore$SelectionCopiedData;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 12039
    const/4 v0, 0x1

    .line 12041
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTextWithBackgroundImage()Z
    .locals 5

    .prologue
    .line 12743
    const/4 v2, 0x0

    .line 12744
    .local v2, isTextWithBackgroundImage:Z
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 12745
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 12751
    .local v1, contentY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 12752
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeWordSelection(II)Z

    move-result v2

    .line 12753
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 12754
    return v2
.end method

.method public isTouchedSingleCursorhandler()Z
    .locals 1

    .prologue
    .line 7305
    iget-boolean v0, p0, Landroid/webkit/WebView;->isTouchedSCH:Z

    return v0
.end method

.method public isVisibleCursorhandlerListener(Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;)V
    .locals 0
    .parameter "mCursorHandlerListener"

    .prologue
    .line 1238
    iput-object p1, p0, Landroid/webkit/WebView;->mHtmlComposerViewCursorHandlerListener:Landroid/webkit/WebView$HtmlComposerViewCursorHandlerListener;

    .line 1239
    return-void
.end method

.method public isVisibleSingleCursorHandler()Z
    .locals 1

    .prologue
    .line 7301
    iget-boolean v0, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 2419
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2420
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 2458
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2460
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2461
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/WebView;->loadDataImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    :goto_0
    return-void

    .line 2464
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2465
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 2466
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 2467
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 2468
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 2469
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 2470
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 2471
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2472
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 2359
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2360
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;)V

    .line 2361
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .line 2341
    .local p2, additionalHttpHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2342
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2343
    return-void
.end method

.method public loadViewState(Ljava/io/InputStream;)Z
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v1, 0x1

    .line 2241
    :try_start_0
    invoke-static {p1, p0}, Landroid/webkit/ViewStateSerializer;->deserializeViewState(Ljava/io/InputStream;Landroid/webkit/WebView;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 2242
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    .line 2243
    iget-object v2, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 2244
    iget-object v2, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2249
    :goto_0
    return v1

    .line 2246
    :catch_0
    move-exception v0

    .line 2247
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v1, "webview"

    const-string v2, "Failed to loadViewState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2249
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadinitialJs(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 12717
    iget-boolean v0, p0, Landroid/webkit/WebView;->mReaderFlag:Z

    if-eqz v0, :cond_0

    .line 12718
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xda

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 12719
    :cond_0
    return-void
.end method

.method moveSelection(FF)V
    .locals 12
    .parameter "xRate"
    .parameter "yRate"

    .prologue
    const/16 v8, 0x10

    const/16 v7, -0x10

    const/4 v9, 0x0

    .line 8992
    iget v10, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v10, :cond_0

    .line 9025
    :goto_0
    return-void

    .line 8994
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 8995
    .local v6, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 8996
    .local v0, height:I
    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    int-to-float v10, v10

    add-float/2addr v10, p1

    float-to-int v10, v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 8997
    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    int-to-float v10, v10

    add-float/2addr v10, p2

    float-to-int v10, v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 8998
    iget v10, p0, Landroid/view/View;->mScrollX:I

    add-int v1, v6, v10

    .line 8999
    .local v1, maxX:I
    iget v10, p0, Landroid/view/View;->mScrollY:I

    add-int v2, v0, v10

    .line 9000
    .local v2, maxY:I
    iget v10, p0, Landroid/view/View;->mScrollX:I

    add-int/lit8 v10, v10, -0x10

    iget v11, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 9002
    iget v10, p0, Landroid/view/View;->mScrollY:I

    add-int/lit8 v10, v10, -0x10

    iget v11, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 9014
    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v10

    iget v11, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v11

    invoke-direct {p0, v10, v11}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    .line 9015
    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v11, p0, Landroid/view/View;->mScrollX:I

    if-ge v10, v11, :cond_1

    move v3, v7

    .line 9018
    .local v3, scrollX:I
    :goto_1
    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v11, p0, Landroid/view/View;->mScrollY:I

    if-ge v10, v11, :cond_3

    move v4, v7

    .line 9021
    .local v4, scrollY:I
    :goto_2
    const/4 v7, 0x1

    invoke-direct {p0, v3, v4, v7, v9}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 9022
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9023
    .local v5, select:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 9024
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 9015
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    .end local v5           #select:Landroid/graphics/Rect;
    :cond_1
    iget v10, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v11, v1, -0x10

    if-le v10, v11, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    move v3, v9

    goto :goto_1

    .line 9018
    .restart local v3       #scrollX:I
    :cond_3
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v2, -0x10

    if-le v7, v10, :cond_4

    move v4, v8

    goto :goto_2

    :cond_4
    move v4, v9

    goto :goto_2
.end method

.method native nativeClearCursor()V
.end method

.method native nativeFocusCandidateFramePointer()I
.end method

.method native nativeFocusCandidateHasNextTextfield()Z
.end method

.method native nativeFocusCandidateIsAutoComplete()Z
.end method

.method native nativeFocusCandidateIsPassword()Z
.end method

.method native nativeFocusCandidateIsSpellcheck()Z
.end method

.method native nativeFocusCandidateLineHeight()I
.end method

.method native nativeFocusCandidateMaxLength()I
.end method

.method native nativeFocusCandidateName()Ljava/lang/String;
.end method

.method native nativeFocusCandidatePointer()I
.end method

.method native nativeFocusCandidateTextSize()F
.end method

.method native nativeFocusNodePointer()I
.end method

.method native nativeGetBlockLeftEdge(IIF)I
.end method

.method native nativeGetBlockLeftTopEdge(IIFF)Landroid/graphics/Rect;
.end method

.method native nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method native nativeInputFieldAction(Ljava/lang/String;I)I
.end method

.method native nativeMoveCursorToInput(Ljava/lang/String;II)I
.end method

.method native nativeMoveCursorToNextTextInput()Z
.end method

.method native nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method notifyFindDialogDismissed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3914
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    .line 3915
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    .line 3916
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 3925
    :goto_0
    return-void

    .line 3919
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    .line 3920
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 3923
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3924
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7132
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 7133
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 7134
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7135
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    if-nez v1, :cond_1

    .line 7136
    new-instance v1, Landroid/webkit/WebView$InnerGlobalLayoutListener;

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebView$InnerGlobalLayoutListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    .line 7137
    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7139
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    if-nez v1, :cond_2

    .line 7140
    new-instance v1, Landroid/webkit/WebView$InnerScrollChangedListener;

    invoke-direct {v1, p0, v2}, Landroid/webkit/WebView$InnerScrollChangedListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    .line 7141
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 7144
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->addAccessibilityApisToJavaScript()V

    .line 7146
    iget-object v1, p0, Landroid/webkit/WebView;->mTouchEventQueue:Landroid/webkit/WebView$TouchEventQueue;

    invoke-virtual {v1}, Landroid/webkit/WebView$TouchEventQueue;->reset()V

    .line 7147
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7186
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "p"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7193
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 5182
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    .line 5186
    iget v0, p0, Landroid/webkit/WebView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 5187
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5188
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 5190
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 5191
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 5194
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/webkit/WebView;->mOrientation:I

    .line 5195
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_2

    .line 5196
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5201
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v2, v0, :cond_3

    .line 5202
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 5208
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    if-eqz v0, :cond_4

    .line 5209
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {v0, v2}, Landroid/webkit/SelectActionModeCallbackSec;->finish(Z)V

    .line 5210
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallbackSec:Landroid/webkit/SelectActionModeCallbackSec;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 5213
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5214
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 5648
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5649
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 5650
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7151
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 7152
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 7153
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 7155
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7156
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    if-eqz v1, :cond_1

    .line 7157
    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7158
    iput-object v2, p0, Landroid/webkit/WebView;->mGlobalLayoutListener:Landroid/webkit/WebView$InnerGlobalLayoutListener;

    .line 7160
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    if-eqz v1, :cond_2

    .line 7161
    iget-object v1, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 7162
    iput-object v2, p0, Landroid/webkit/WebView;->mScrollChangedListener:Landroid/webkit/WebView$InnerScrollChangedListener;

    .line 7165
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->removeAccessibilityApisFromJavaScript()V

    .line 7167
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 7168
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 4852
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_1

    .line 4853
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mBackgroundColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 5021
    :cond_0
    :goto_0
    return-void

    .line 4858
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;

    invoke-virtual {v2}, Landroid/webkit/PointerDevice$TouchOptimizer;->isTouching()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->canOptimizeTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4862
    new-instance v2, Landroid/webkit/WebView$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/webkit/WebView$9;-><init>(Landroid/webkit/WebView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 4884
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mContentWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v2, v5

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v2, :cond_3

    .line 4885
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mBackgroundColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 4889
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4890
    sget-boolean v2, Landroid/webkit/WebView;->mIncrementEGLContextHack:Z

    if-nez v2, :cond_4

    .line 4891
    const/4 v2, 0x1

    sput-boolean v2, Landroid/webkit/WebView;->mIncrementEGLContextHack:Z

    .line 4892
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v11

    check-cast v11, Ljavax/microedition/khronos/egl/EGL10;

    .line 4893
    .local v11, egl:Ljavax/microedition/khronos/egl/EGL10;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v11, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v12

    .line 4894
    .local v12, eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v22, v0

    .line 4895
    .local v22, version:[I
    move-object/from16 v0, v22

    invoke-interface {v11, v12, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 4897
    .end local v11           #egl:Ljavax/microedition/khronos/egl/EGL10;
    .end local v12           #eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v22           #version:[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->setHardwareAccelerated()V

    .line 4900
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v20

    .line 4901
    .local v20, saveCount:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v2

    if-nez v2, :cond_6

    .line 4903
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->drawOverScrollBackground(Landroid/graphics/Canvas;)V

    .line 4905
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 4906
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4910
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->shouldDrawUsingLightTouch()Z

    move-result v9

    .line 4920
    .local v9, drawJavaRings:Z
    if-nez v9, :cond_a

    const/4 v10, 0x1

    .line 4924
    .local v10, drawNativeRings:Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;Z)V

    .line 4925
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4930
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    .line 4932
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/webkit/OverScrollGlow;->drawEdgeGlows(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4933
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4938
    :cond_8
    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 4940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Landroid/webkit/WebView;->mTouchHighlightRequested:J

    sub-long v3, v5, v7

    .line 4944
    .local v3, delay:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_b

    .line 4948
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v17

    .line 4949
    .local v17, r:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 5013
    .end local v3           #delay:J
    .end local v17           #r:Landroid/graphics/Rect;
    :cond_9
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEnablePerformanceTest()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5014
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->cnt:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    .line 5015
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 5016
    .local v14, onDrawFinishedTime:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/webkit/WebView;->mTouchUpEvent:J

    sub-long v18, v14, v5

    .line 5017
    .local v18, responseTime:J
    const-string v2, "doubletap"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Response Time from Touch Up  to 3rd onDraw end : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4920
    .end local v10           #drawNativeRings:Z
    .end local v14           #onDrawFinishedTime:J
    .end local v18           #responseTime:J
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 4951
    .restart local v3       #delay:J
    .restart local v10       #drawNativeRings:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_c

    .line 4952
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    .line 4953
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    const v5, 0x66ff9129

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 4955
    :cond_c
    new-instance v13, Landroid/graphics/RegionIterator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-direct {v13, v2}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 4957
    .local v13, iter:Landroid/graphics/RegionIterator;
    const/16 v21, 0x0

    .line 4961
    .local v21, skipDraw:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->isRect()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4962
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 4963
    .restart local v17       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 4968
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    if-gt v2, v5, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    if-le v2, v5, :cond_e

    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v2

    if-nez v2, :cond_e

    .line 4969
    const/16 v21, 0x1

    .line 4976
    .end local v17           #r:Landroid/graphics/Rect;
    :cond_e
    if-nez v21, :cond_9

    .line 4980
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchHighlightRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v16

    .line 4981
    .local v16, path:Landroid/graphics/Path;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Path;->close()V

    .line 4982
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mTouchHightlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3451
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-gez v0, :cond_0

    .line 3452
    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr p4, v0

    .line 3454
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3455
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3456
    return-void
.end method

.method onFixedLengthZoomAnimationEnd()V
    .locals 1

    .prologue
    .line 5358
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_0

    .line 5359
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5361
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationEnd()V

    .line 5362
    return-void
.end method

.method onFixedLengthZoomAnimationStart()V
    .locals 1

    .prologue
    .line 5353
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5354
    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationStart()V

    .line 5355
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7420
    if-eqz p1, :cond_3

    .line 7423
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7425
    instance-of v2, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_1

    .line 7426
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 7427
    const-string/jumbo v0, "webview"

    const-string/jumbo v2, "setActive, has Focus() mDrawCursorRing set to false for HTMLComposer only"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7435
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    .line 7451
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 7452
    return-void

    .line 7431
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_0

    .line 7444
    :cond_3
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 7445
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7446
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    .line 7448
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 8825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 8826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 8847
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 8830
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 8831
    const/4 v3, 0x0

    .line 8832
    .local v3, vscroll:F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 8837
    .local v1, hscroll:F
    :goto_1
    cmpl-float v4, v1, v5

    if-nez v4, :cond_1

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_0

    .line 8838
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v2, v4

    .line 8839
    .local v2, vdelta:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 8840
    .local v0, hdelta:I
    invoke-direct {p0, v0, v2, v6, v6}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8841
    const/4 v4, 0x1

    goto :goto_0

    .line 8834
    .end local v0           #hdelta:I
    .end local v1           #hscroll:F
    .end local v2           #vdelta:I
    .end local v3           #vscroll:F
    :cond_2
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    neg-float v3, v4

    .line 8835
    .restart local v3       #vscroll:F
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1       #hscroll:F
    goto :goto_1

    .line 8826
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7201
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 7691
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    .line 7692
    const/4 v1, 0x0

    .line 7698
    :goto_0
    return v1

    .line 7694
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorDataNoPosition()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v0

    .line 7695
    .local v0, data:Landroid/webkit/WebViewCore$CursorData;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 7696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 7697
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x87

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7698
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 1606
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1607
    invoke-direct {p0}, Landroid/webkit/WebView;->isScrollableForAccessibility()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1608
    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1609
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1610
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    .line 1611
    .local v3, convertedContentWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1612
    .local v1, adjustedViewWidth:I
    sub-int v4, v3, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 1613
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    .line 1614
    .local v2, convertedContentHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 1615
    .local v0, adjustedViewHeight:I
    sub-int v4, v2, v0

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1616
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1600
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1601
    invoke-direct {p0}, Landroid/webkit/WebView;->isScrollableForAccessibility()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1602
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x13

    const/4 v11, -0x1

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6210
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v0, :cond_1

    move v4, v5

    .line 6410
    :cond_0
    :goto_0
    return v4

    .line 6215
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v5

    .line 6216
    goto :goto_0

    .line 6219
    :cond_2
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_3

    move v4, v5

    .line 6220
    goto :goto_0

    .line 6232
    :cond_3
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_4

    move v4, v5

    .line 6236
    goto :goto_0

    .line 6242
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v4, v5

    .line 6244
    goto :goto_0

    .line 6248
    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->accessibilityScriptInjected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6249
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6253
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 6257
    :cond_7
    iput-boolean v5, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    .line 6273
    :cond_8
    :goto_1
    const/16 v0, 0x5c

    if-ne p1, v0, :cond_c

    .line 6274
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6275
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto :goto_0

    .line 6259
    :cond_9
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-eqz v0, :cond_8

    .line 6260
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6261
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    invoke-virtual {v0, p2}, Landroid/webkit/AccessibilityInjector;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 6269
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_1

    .line 6277
    :cond_b
    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6278
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto :goto_0

    .line 6283
    :cond_c
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_e

    .line 6284
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6285
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto/16 :goto_0

    .line 6287
    :cond_d
    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6288
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto/16 :goto_0

    .line 6293
    :cond_e
    const/16 v0, 0x7a

    if-ne p1, v0, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6294
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto/16 :goto_0

    .line 6298
    :cond_f
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6299
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto/16 :goto_0

    .line 6303
    :cond_10
    if-lt p1, v2, :cond_19

    const/16 v0, 0x16

    if-gt p1, v0, :cond_19

    .line 6305
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6306
    invoke-direct {p0}, Landroid/webkit/WebView;->nativePageShouldHandleShiftAndArrows()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6307
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    goto/16 :goto_0

    .line 6310
    :cond_11
    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6311
    packed-switch p1, :pswitch_data_0

    .line 6326
    :cond_12
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_17

    .line 6327
    const/16 v0, 0x15

    if-ne p1, v0, :cond_13

    move v10, v11

    .line 6329
    .local v10, xRate:I
    :goto_2
    if-ne p1, v2, :cond_15

    .line 6331
    .local v11, yRate:I
    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    .line 6332
    .local v8, multiplier:I
    mul-int v0, v10, v8

    int-to-float v0, v0

    mul-int v1, v11, v8

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->moveSelection(FF)V

    goto/16 :goto_0

    .line 6313
    .end local v8           #multiplier:I
    .end local v10           #xRate:I
    .end local v11           #yRate:I
    :pswitch_0
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    goto/16 :goto_0

    .line 6316
    :pswitch_1
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto/16 :goto_0

    .line 6319
    :pswitch_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 6320
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v5, v0, v4, v5}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v4

    goto/16 :goto_0

    .line 6322
    :pswitch_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 6323
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v0, v1, v4, v5}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v4

    goto/16 :goto_0

    .line 6327
    :cond_13
    const/16 v0, 0x16

    if-ne p1, v0, :cond_14

    move v10, v4

    goto :goto_2

    :cond_14
    move v10, v5

    goto :goto_2

    .line 6329
    .restart local v10       #xRate:I
    :cond_15
    const/16 v0, 0x14

    if-ne p1, v0, :cond_16

    move v11, v4

    goto :goto_3

    :cond_16
    move v11, v5

    goto :goto_3

    .line 6335
    .end local v10           #xRate:I
    :cond_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 6336
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto/16 :goto_0

    :cond_18
    move v4, v5

    .line 6340
    goto/16 :goto_0

    .line 6343
    :cond_19
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1d

    .line 6344
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 6345
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    move v9, v4

    .line 6347
    .local v9, wantsKeyEvents:Z
    :goto_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1b

    .line 6348
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_0

    .line 6351
    iput-boolean v4, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 6352
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6354
    if-eqz v9, :cond_0

    .line 6357
    :cond_1b
    if-nez v9, :cond_1d

    move v4, v5

    goto/16 :goto_0

    .end local v9           #wantsKeyEvents:Z
    :cond_1c
    move v9, v5

    .line 6345
    goto :goto_4

    .line 6360
    :cond_1d
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6361
    packed-switch p1, :pswitch_data_1

    .line 6379
    :cond_1e
    :goto_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6382
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x79

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6386
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 6388
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6389
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 6390
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 6363
    :pswitch_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto :goto_5

    .line 6367
    :pswitch_5
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1f

    move v5, v4

    :cond_1f
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto :goto_5

    .line 6371
    :pswitch_6
    const/16 v0, 0xe

    if-ne p1, v0, :cond_20

    move v5, v4

    :cond_20
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto :goto_5

    .line 6374
    :pswitch_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeInstrumentReport()V

    goto/16 :goto_0

    .line 6392
    :cond_21
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasFocusNode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6395
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 6396
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6397
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 6398
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0

    .line 6403
    :cond_22
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_23

    .line 6405
    :cond_23
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6407
    invoke-virtual {p0}, Landroid/webkit/WebView;->drawSelectionControl()V

    goto/16 :goto_0

    .line 6311
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 6361
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 6183
    iget-boolean v1, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v1, :cond_1

    .line 6194
    :cond_0
    :goto_0
    return v0

    .line 6187
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6189
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6190
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6192
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x68

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 6423
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v0, :cond_1

    .line 6546
    :cond_0
    :goto_0
    return v4

    .line 6427
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 6432
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6433
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v8

    .line 6434
    .local v8, text:Ljava/lang/String;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v8, :cond_2

    const-string/jumbo v0, "tel:"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6436
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6437
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v10

    .line 6438
    goto :goto_0

    .line 6442
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #text:Ljava/lang/String;
    :cond_2
    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    .line 6452
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6458
    invoke-direct {p0}, Landroid/webkit/WebView;->accessibilityScriptInjected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6459
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6463
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v10

    .line 6464
    goto :goto_0

    .line 6467
    :cond_3
    iput-boolean v4, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    .line 6483
    :cond_4
    :goto_1
    const/16 v0, 0x13

    if-lt p1, v0, :cond_7

    const/16 v0, 0x16

    if-gt p1, v0, :cond_7

    .line 6485
    invoke-direct {p0}, Landroid/webkit/WebView;->nativePageShouldHandleShiftAndArrows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6486
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->letPageHandleNavKey(IJZI)V

    move v4, v10

    .line 6487
    goto :goto_0

    .line 6469
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    if-eqz v0, :cond_4

    .line 6470
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6471
    iget-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    invoke-virtual {v0, p2}, Landroid/webkit/AccessibilityInjector;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v4, v10

    .line 6475
    goto/16 :goto_0

    .line 6479
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mAccessibilityInjector:Landroid/webkit/AccessibilityInjector;

    goto :goto_1

    .line 6494
    :cond_7
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->isEnterActionKey(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6496
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6497
    iput-boolean v4, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 6499
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_9

    .line 6500
    iget-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v0, :cond_8

    .line 6501
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 6502
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_2
    move v4, v10

    .line 6508
    goto/16 :goto_0

    .line 6504
    :cond_8
    iput-boolean v10, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 6505
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 6506
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_2

    .line 6512
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 6515
    .local v9, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v9}, Landroid/webkit/WebView;->nativeCursorIntersects(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6518
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v6

    .line 6519
    .local v6, data:Landroid/webkit/WebViewCore$CursorData;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6520
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 6521
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6522
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 6523
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 6524
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6525
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    :cond_a
    move v4, v10

    .line 6527
    goto/16 :goto_0

    .line 6529
    :cond_b
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 6530
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeShowCursorTimed()V

    .line 6531
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v4, v10

    .line 6532
    goto/16 :goto_0

    .line 6534
    :cond_c
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_d

    .line 6535
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    iget v2, v6, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    move v4, v10

    .line 6537
    goto/16 :goto_0

    .line 6542
    .end local v6           #data:Landroid/webkit/WebViewCore$CursorData;
    .end local v9           #visibleRect:Landroid/graphics/Rect;
    :cond_d
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_e

    .line 6544
    :cond_e
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v2, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v10

    .line 6546
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x100

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 9723
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 9725
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 9726
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 9727
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 9728
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 9730
    .local v7, widthSize:I
    move v4, v3

    .line 9731
    .local v4, measuredHeight:I
    move v5, v7

    .line 9734
    .local v5, measuredWidth:I
    iget v8, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    .line 9735
    .local v0, contentHeight:I
    iget v8, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    .line 9739
    .local v1, contentWidth:I
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_2

    .line 9740
    iput-boolean v10, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 9741
    move v4, v0

    .line 9742
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_0

    .line 9745
    if-le v4, v3, :cond_0

    .line 9746
    move v4, v3

    .line 9747
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 9748
    or-int/2addr v4, v11

    .line 9754
    :cond_0
    :goto_0
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_1

    .line 9755
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetHeightCanMeasure(Z)V

    .line 9758
    :cond_1
    if-nez v6, :cond_3

    .line 9759
    iput-boolean v10, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    .line 9760
    move v5, v1

    .line 9768
    :goto_1
    monitor-enter p0

    .line 9769
    :try_start_0
    invoke-virtual {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 9770
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9771
    return-void

    .line 9752
    :cond_2
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    goto :goto_0

    .line 9762
    :cond_3
    if-ge v5, v1, :cond_4

    .line 9763
    or-int/2addr v5, v11

    .line 9765
    :cond_4
    iput-boolean v9, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    goto :goto_1

    .line 9770
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v2, 0x1

    .line 3463
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 3464
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->scrollLayerTo(II)V

    .line 3488
    :cond_0
    :goto_0
    return-void

    .line 3467
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 3468
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 3469
    .local v5, maxX:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 3470
    .local v6, maxY:I
    if-nez v5, :cond_5

    .line 3472
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3476
    :cond_2
    :goto_1
    if-ltz p2, :cond_3

    if-le p2, v6, :cond_4

    .line 3477
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 3480
    :cond_4
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 3481
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 3483
    .local v4, oldY:I
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    .line 3485
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-eqz v0, :cond_0

    .line 3486
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/OverScrollGlow;->pullGlow(IIIIII)V

    goto :goto_0

    .line 3473
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    :cond_5
    if-ltz p1, :cond_6

    if-le p1, v5, :cond_2

    .line 3474
    :cond_6
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    goto :goto_1
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 4121
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4125
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-nez v0, :cond_0

    .line 4127
    const/4 v0, 0x0

    iget v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 4130
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 4132
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onPageFinished(Ljava/lang/String;)V

    .line 4133
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->injectAccessibilityForUrl(Ljava/lang/String;)V

    .line 4134
    return-void
.end method

.method onPageStarted(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 4109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 4113
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mAccessibilityScriptInjected:Z

    .line 4114
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3609
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3610
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-nez v0, :cond_3

    .line 3611
    iput-boolean v3, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 3612
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3615
    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 3616
    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->pauseAndDispatch()V

    .line 3618
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_1

    .line 3619
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v3}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    .line 3625
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadByBrowser()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_double_tap"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 3626
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->unregisterTockTockListener()V

    .line 3630
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearSelection()V

    .line 3633
    :cond_3
    return-void
.end method

.method onPinchToZoomAnimationEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    .line 7636
    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationEnd()V

    .line 7640
    const/16 v0, 0x8

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7641
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7642
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v1

    iget-wide v2, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 7643
    return-void
.end method

.method onPinchToZoomAnimationStart()V
    .locals 0

    .prologue
    .line 7631
    invoke-direct {p0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 7632
    invoke-direct {p0}, Landroid/webkit/WebView;->onZoomAnimationStart()V

    .line 7633
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3656
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3657
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_2

    .line 3658
    iput-boolean v2, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 3659
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3660
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 3661
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v2}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    .line 3666
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadByBrowser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_double_tap"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3667
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->registerTockTockListener(Landroid/content/Context;)V

    .line 3671
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearSelection()V

    .line 3674
    :cond_2
    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    .line 1648
    const/4 v1, 0x0

    .line 1649
    .local v1, rVal:Z
    if-nez p4, :cond_0

    .line 1651
    iget-object v3, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :goto_0
    return v1

    .line 1653
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1655
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1660
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1662
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1667
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x10403c9

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040414

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040415

    new-instance v5, Landroid/webkit/WebView$5;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebView$5;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040416

    new-instance v5, Landroid/webkit/WebView$4;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebView$4;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040417

    new-instance v5, Landroid/webkit/WebView$3;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebView$3;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$2;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebView$2;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1695
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v3, 0x0

    .line 7525
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 7526
    iget-boolean v1, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-nez v1, :cond_0

    .line 7527
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 7530
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 7531
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 7532
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 7535
    .end local v0           #titleHeight:I
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    .line 7497
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 7502
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getDefaultMinZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 7503
    .local v0, newMaxViewportWidth:I
    sget v1, Landroid/webkit/WebView;->sMaxViewportWidth:I

    if-le v0, v1, :cond_0

    .line 7504
    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 7507
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/webkit/ZoomManager;->onSizeChanged(IIII)V

    .line 7509
    iget-object v1, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-nez v1, :cond_1

    .line 7513
    iget-object v1, p0, Landroid/webkit/WebView;->mLoadedPicture:Landroid/webkit/WebViewCore$DrawData;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 7517
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v1, :cond_2

    .line 7518
    iget-object v1, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v1}, Landroid/webkit/WebSelectDialog;->onWebViewSizeChanged()V

    .line 7521
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 7703
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7741
    :cond_0
    :goto_0
    return v2

    .line 7707
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/webkit/WebView;->mTouchUpEvent:J

    .line 7709
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 7710
    iget v3, p0, Landroid/webkit/WebView;->mTouchSlopSquareForSPen:I

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 7716
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 7717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/webkit/WebView;->nativeIsTouchingEventListener(II)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    .line 7722
    :cond_3
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;

    if-eqz v3, :cond_6

    .line 7723
    const/4 v2, 0x0

    .line 7724
    .local v2, status:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->canOptimizeTouchEvent()Z

    move-result v1

    .line 7729
    .local v1, optimize:Z
    iget-object v3, p0, Landroid/webkit/WebView;->mTouchOptimizer:Landroid/webkit/PointerDevice$TouchOptimizer;

    invoke-virtual {v3, p1}, Landroid/webkit/PointerDevice$TouchOptimizer;->onTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 7730
    .local v0, newEvent:Landroid/view/MotionEvent;
    if-eqz v1, :cond_5

    .line 7731
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->_onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 7735
    :goto_2
    if-eq v0, p1, :cond_0

    .line 7736
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 7712
    .end local v0           #newEvent:Landroid/view/MotionEvent;
    .end local v1           #optimize:Z
    .end local v2           #status:Z
    :cond_4
    iget v3, p0, Landroid/webkit/WebView;->mTouchSlopSquareForFinger:I

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    goto :goto_1

    .line 7733
    .restart local v0       #newEvent:Landroid/view/MotionEvent;
    .restart local v1       #optimize:Z
    .restart local v2       #status:Z
    :cond_5
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->_onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_2

    .line 7741
    .end local v0           #newEvent:Landroid/view/MotionEvent;
    .end local v1           #optimize:Z
    .end local v2           #status:Z
    :cond_6
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->_onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v6, 0xc8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 8909
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 8910
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 8911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 8912
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 8988
    :cond_1
    :goto_0
    return v2

    .line 8915
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_6

    .line 8916
    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v4, :cond_1

    .line 8919
    iput-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 8920
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_3

    move v2, v3

    .line 8921
    goto :goto_0

    .line 8923
    :cond_3
    iget-wide v4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    sub-long v4, v0, v4

    cmp-long v2, v4, v6

    if-gtz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 8925
    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 8932
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_5
    move v2, v3

    .line 8933
    goto :goto_0

    .line 8935
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_9

    .line 8937
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 8938
    iput-boolean v3, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 8939
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 8940
    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v4, :cond_8

    .line 8941
    iget-boolean v3, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v3, :cond_7

    .line 8942
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 8943
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    goto :goto_0

    .line 8945
    :cond_7
    iput-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 8946
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 8947
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    :cond_8
    move v2, v3

    .line 8956
    goto :goto_0

    .line 8958
    :cond_9
    iget-boolean v4, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    if-eqz v4, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    :cond_a
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    move v2, v3

    .line 8961
    goto :goto_0

    .line 8963
    :cond_c
    iget-boolean v4, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-nez v4, :cond_1

    .line 8967
    iget-wide v4, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 8972
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8973
    iget-wide v4, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_d

    .line 8978
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 8979
    iput v3, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput v3, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 8981
    :cond_d
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 8985
    iget v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 8986
    iget v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 8987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->doTrackball(JI)V

    goto/16 :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 7172
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7175
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_0

    .line 7176
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 7178
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->updateDrawingState()V

    .line 7179
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    .line 7260
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 7261
    if-eqz p1, :cond_2

    .line 7262
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebView;)V

    .line 7263
    iget-boolean v1, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    if-eqz v1, :cond_0

    .line 7264
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7265
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    .line 7277
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v1, v1, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v2, v1, :cond_1

    .line 7278
    iget-object v1, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v1}, Landroid/webkit/WebMagnifier;->hide()V

    .line 7280
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 7281
    return-void

    .line 7268
    :cond_2
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebView;)V

    .line 7269
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 7270
    .local v0, settings:Landroid/webkit/WebSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->enableSmoothTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7272
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7273
    iput-boolean v2, p0, Landroid/webkit/WebView;->mPictureUpdatePausedForFocusChange:Z

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 3637
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    .line 3638
    invoke-virtual {p0}, Landroid/webkit/WebView;->updateDrawingState()V

    .line 3639
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 1734
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1735
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 1743
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1744
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 6
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 2687
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2688
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    .line 2703
    :goto_0
    return v2

    .line 2691
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2692
    if-eqz p1, :cond_1

    .line 2693
    iget v3, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v4

    invoke-direct {p0, v3, v4, v5, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2696
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2698
    .local v0, h:I
    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    .line 2699
    add-int/lit8 v1, v0, -0x18

    .line 2703
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v5, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2701
    .end local v1           #y:I
    :cond_2
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 2703
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method protected pageSwapCallback(Z)V
    .locals 2
    .parameter "notifyAnimationStarted"

    .prologue
    .line 11025
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11026
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->didUpdateWebTextViewDimensions(I)Z

    .line 11028
    :cond_0
    if-eqz p1, :cond_1

    .line 11029
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 11031
    :cond_1
    return-void
.end method

.method public pageUp(Z)Z
    .locals 5
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2660
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2661
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    .line 2677
    :goto_0
    return v2

    .line 2664
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2665
    if-eqz p1, :cond_1

    .line 2667
    iget v3, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0, v3, v2, v4, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2670
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2672
    .local v0, h:I
    const/16 v3, 0x30

    if-le v0, v3, :cond_2

    .line 2673
    neg-int v3, v0

    add-int/lit8 v1, v3, 0x18

    .line 2677
    .local v1, y:I
    :goto_1
    iget-object v3, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2, v1, v4, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2675
    .end local v1           #y:I
    :cond_2
    neg-int v3, v0

    div-int/lit8 v1, v3, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 2677
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 9915
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    .line 9931
    :goto_0
    return-void

    .line 9918
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 9919
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 9920
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 9922
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 9923
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9928
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 9929
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 3587
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3588
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3589
    return-void
.end method

.method public performLongClick()Z
    .locals 19

    .prologue
    .line 5044
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v16, 0x0

    .line 5151
    :cond_0
    :goto_0
    return v16

    .line 5048
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2}, Landroid/webkit/ZoomManager;->getMultiTouchGestureDetector()Landroid/webkit/WebviewScaleGestureDetector;

    move-result-object v12

    .line 5049
    .local v12, detector:Landroid/webkit/WebviewScaleGestureDetector;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/webkit/WebviewScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5050
    const/16 v16, 0x0

    goto :goto_0

    .line 5053
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5055
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 5056
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5063
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5066
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->ensureLayout()V

    .line 5069
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 5071
    .local v17, params:Landroid/widget/AbsoluteLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, v17

    iget v8, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/View;->mScrollX:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebView;->mLastTouchY:I

    move-object/from16 v0, v17

    iget v9, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mScrollY:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 5075
    .local v14, fake:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v14}, Landroid/webkit/WebTextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5076
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->performLongClick()Z

    move-result v16

    goto :goto_0

    .line 5059
    .end local v14           #fake:Landroid/view/MotionEvent;
    .end local v17           #params:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/webkit/HtmlComposerView;

    if-nez v2, :cond_3

    .line 5061
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->clearTextEntry()V

    goto :goto_1

    .line 5078
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_6

    const/16 v16, 0x0

    goto/16 :goto_0

    .line 5080
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v15

    .line 5082
    .local v15, hitTest:Landroid/webkit/WebView$HitTestResult;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/webkit/WebView;->mAutoSelection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    if-eqz v15, :cond_7

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static {v15}, Landroid/webkit/WebView$HitTestResult;->access$1700(Landroid/webkit/WebView$HitTestResult;)I

    move-result v2

    if-nez v2, :cond_b

    .line 5084
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastTouchX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v10

    .line 5085
    .local v10, contentX:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkit/WebView;->mLastTouchY:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v11

    .line 5091
    .local v11, contentY:I
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_9

    .line 5092
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 5093
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mLongPressForActionPopup:Z

    .line 5095
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mIsSCHExpired:Z

    .line 5096
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mSCHTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    .line 5097
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mSCHTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 5098
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 5100
    new-instance v18, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5101
    .local v18, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v18

    .line 5102
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x224

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v10, v11, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5104
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5108
    :goto_2
    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5110
    const/4 v3, 0x1

    invoke-virtual/range {v18 .. v18}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v3, v2, :cond_9

    .line 5111
    const-string/jumbo v2, "webview"

    const-string v3, " WebViewCore.ACTION_LONGPRESS(HTML_COMPOSER) : selectClosestWord() is not called "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5112
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 5105
    :catch_0
    move-exception v13

    .line 5106
    .local v13, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v2, "webview"

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5108
    .end local v13           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 5116
    .end local v18           #res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/webkit/WebView;->selectClosestWord(II)Z

    .line 5118
    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_a

    .line 5119
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/webkit/WebView;->mLongPress:Z

    .line 5123
    :cond_a
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 5130
    .end local v10           #contentX:I
    .end local v11           #contentY:I
    :cond_b
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5131
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 5135
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 5136
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUseDefaultClipboard()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 5137
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectLastTouchText()Z

    move-result v16

    goto/16 :goto_0

    .line 5139
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 5147
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectText()Z

    move-result v16

    .line 5148
    .local v16, isSelecting:Z
    if-eqz v16, :cond_0

    .line 5149
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    goto/16 :goto_0
.end method

.method pinLocX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 2986
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    .line 2987
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method pinLocY(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 2992
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    .line 2993
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result p1

    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 2379
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2380
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2381
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2382
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 2383
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 2384
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 2385
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2386
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2390
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :goto_0
    return-void

    .line 2388
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->loadUrlImpl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method rebuildWebTextView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 5929
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5982
    :cond_0
    :goto_0
    return-void

    .line 5932
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    .line 5935
    .local v0, alreadyThere:Z
    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v5, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v5

    if-nez v5, :cond_3

    .line 5936
    :cond_2
    if-eqz v0, :cond_0

    .line 5937
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_0

    .line 5943
    :cond_3
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-nez v5, :cond_4

    .line 5944
    new-instance v5, Landroid/webkit/WebTextView;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/webkit/WebView;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;

    invoke-virtual {v7}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v7

    invoke-direct {v5, v6, p0, v7}, Landroid/webkit/WebTextView;-><init>(Landroid/content/Context;Landroid/webkit/WebView;I)V

    iput-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    .line 5946
    iput v8, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 5948
    :cond_4
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->updateTextSize()V

    .line 5949
    invoke-direct {p0}, Landroid/webkit/WebView;->updateWebTextViewPosition()V

    .line 5950
    sput-boolean v8, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 5951
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateText()Ljava/lang/String;

    move-result-object v4

    .line 5952
    .local v4, text:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v3

    .line 5955
    .local v3, nodePointer:I
    iput v3, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 5956
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    .line 5957
    .local v2, name:Ljava/lang/String;
    iput-object v2, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 5958
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5, v2}, Landroid/webkit/WebTextView;->setNodeName(Ljava/lang/String;)V

    .line 5963
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5, v3}, Landroid/webkit/WebTextView;->setNodePointer(I)V

    .line 5964
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->setType(I)V

    .line 5966
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsRtlText()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->setGravityForRtl(Z)V

    .line 5967
    if-nez v4, :cond_5

    .line 5971
    const-string v4, ""

    .line 5973
    :cond_5
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5, v4}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 5974
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 5975
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_6

    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v5}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5976
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v5}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 5977
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->clearComposingText()V

    .line 5979
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5980
    iget-object v5, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->requestFocus()Z

    goto/16 :goto_0
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4552
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4553
    return-void
.end method

.method protected registerPageSwapCallback()V
    .locals 0

    .prologue
    .line 11844
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeRegisterPageSwapCallback()V

    .line 11845
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 2536
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2537
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2538
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2539
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2540
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 3
    .parameter "interfaceName"

    .prologue
    .line 4510
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4511
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 4512
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4513
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4514
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x95

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4516
    .end local v0           #arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    :cond_0
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 3
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 9904
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 9905
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 9906
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 9907
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 9908
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 9909
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 9910
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9911
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 16
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 9842
    move-object/from16 v0, p0

    iget v11, v0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v11, :cond_0

    .line 9843
    const/4 v11, 0x0

    .line 9899
    :goto_0
    return v11

    .line 9847
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v11}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 9848
    const/4 v11, 0x0

    goto :goto_0

    .line 9851
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    .line 9854
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/View;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v14

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v14

    invoke-direct {v1, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9859
    .local v1, content:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9860
    iget v11, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v7

    .line 9861
    .local v7, screenTop:I
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    .line 9862
    .local v4, screenBottom:I
    sub-int v2, v4, v7

    .line 9863
    .local v2, height:I
    const/4 v9, 0x0

    .line 9865
    .local v9, scrollYDelta:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    if-le v11, v4, :cond_5

    .line 9866
    div-int/lit8 v3, v2, 0x3

    .line 9867
    .local v3, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    mul-int/lit8 v12, v3, 0x2

    if-le v11, v12, :cond_4

    .line 9870
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v7

    .line 9880
    .end local v3           #oneThirdOfScreenHeight:I
    :cond_2
    :goto_1
    iget v11, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    .line 9881
    .local v5, screenLeft:I
    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v6

    .line 9882
    .local v6, screenRight:I
    sub-int v10, v6, v5

    .line 9883
    .local v10, width:I
    const/4 v8, 0x0

    .line 9885
    .local v8, scrollXDelta:I
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    if-le v11, v6, :cond_7

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-le v11, v5, :cond_7

    .line 9886
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v11

    if-le v11, v10, :cond_6

    .line 9887
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v5

    add-int/2addr v8, v11

    .line 9895
    :cond_3
    :goto_2
    or-int v11, v9, v8

    if-eqz v11, :cond_9

    .line 9896
    if-nez p3, :cond_8

    const/4 v11, 0x1

    :goto_3
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v11, v12}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v11

    goto/16 :goto_0

    .line 9874
    .end local v5           #screenLeft:I
    .end local v6           #screenRight:I
    .end local v8           #scrollXDelta:I
    .end local v10           #width:I
    .restart local v3       #oneThirdOfScreenHeight:I
    :cond_4
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    add-int v12, v7, v3

    sub-int v9, v11, v12

    goto :goto_1

    .line 9876
    .end local v3           #oneThirdOfScreenHeight:I
    :cond_5
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    if-ge v11, v7, :cond_2

    .line 9877
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->top:I

    sub-int v9, v11, v7

    goto :goto_1

    .line 9889
    .restart local v5       #screenLeft:I
    .restart local v6       #screenRight:I
    .restart local v8       #scrollXDelta:I
    .restart local v10       #width:I
    :cond_6
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v6

    add-int/2addr v8, v11

    goto :goto_2

    .line 9891
    :cond_7
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    if-ge v11, v5, :cond_3

    .line 9892
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    sub-int v11, v5, v11

    sub-int/2addr v8, v11

    goto :goto_2

    .line 9896
    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    .line 9899
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    .line 9685
    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    .line 9718
    :cond_0
    :goto_0
    return v6

    .line 9686
    :cond_1
    const/4 v6, 0x0

    .line 9687
    .local v6, result:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9688
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    goto :goto_0

    .line 9691
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 9692
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNeedInitialFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9696
    const/4 v1, 0x0

    .line 9697
    .local v1, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 9705
    :sswitch_0
    const/16 v1, 0x15

    .line 9713
    :goto_1
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9714
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    goto :goto_0

    .line 9699
    :sswitch_1
    const/16 v1, 0x13

    .line 9700
    goto :goto_1

    .line 9702
    :sswitch_2
    const/16 v1, 0x14

    .line 9703
    goto :goto_1

    .line 9708
    :sswitch_3
    const/16 v1, 0x16

    .line 9709
    goto :goto_1

    .line 9697
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
        0x42 -> :sswitch_3
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 6
    .parameter "hrefMsg"

    .prologue
    .line 2928
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2929
    if-nez p1, :cond_0

    .line 2947
    :goto_0
    return-void

    .line 2932
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v5, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2933
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2934
    .local v1, contentY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2935
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2936
    .local v2, cursorBounds:Landroid/graphics/Rect;
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2937
    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    .line 2938
    .local v3, slop:I
    neg-int v4, v3

    neg-int v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 2939
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2940
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 2941
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 2945
    .end local v2           #cursorBounds:Landroid/graphics/Rect;
    .end local v3           #slop:I
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x89

    invoke-virtual {v4, v5, v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method requestFormData(Ljava/lang/String;IZZ)V
    .locals 8
    .parameter "name"
    .parameter "nodePointer"
    .parameter "autoFillable"
    .parameter "autoComplete"

    .prologue
    .line 6038
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6039
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 6040
    .local v4, update:Landroid/os/Message;
    iput p2, v4, Landroid/os/Message;->arg1:I

    .line 6041
    new-instance v0, Landroid/webkit/WebView$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$RequestFormData;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;ZZ)V

    .line 6043
    .local v0, updater:Landroid/webkit/WebView$RequestFormData;
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6044
    .local v7, t:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 6046
    .end local v0           #updater:Landroid/webkit/WebView$RequestFormData;
    .end local v4           #update:Landroid/os/Message;
    .end local v7           #t:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2957
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2958
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    .line 2966
    :goto_0
    return-void

    .line 2959
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v5, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2960
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2961
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2962
    .local v3, ref:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2963
    .local v2, data:Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2964
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2965
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method requestLabel(II)V
    .locals 2
    .parameter "framePointer"
    .parameter "nodePointer"

    .prologue
    .line 6055
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 6057
    return-void
.end method

.method requestListBox([Ljava/lang/String;[IILjava/lang/String;I)V
    .locals 8
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"
    .parameter "name"
    .parameter "pointer"

    .prologue
    .line 11527
    iput p5, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 11528
    iput-object p4, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 11529
    invoke-virtual {p0, p4, p5}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v5

    .line 11537
    .local v5, action:I
    iget-object v7, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[IIILandroid/webkit/WebView$1;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11539
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[ILjava/lang/String;I)V
    .locals 8
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"
    .parameter "name"
    .parameter "pointer"

    .prologue
    .line 11502
    iput p5, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 11503
    iput-object p4, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 11504
    invoke-virtual {p0, p4, p5}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v5

    .line 11511
    .local v5, action:I
    iget-object v7, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[IILandroid/webkit/WebView$1;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11513
    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    .prologue
    .line 8904
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 8905
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .parameter "b"
    .parameter "src"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2177
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2178
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2212
    :cond_0
    :goto_0
    return v3

    .line 2181
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2185
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2186
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2187
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebView$7;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebView$7;-><init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2212
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2209
    :catch_0
    move-exception v1

    .line 2210
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "inState"

    .prologue
    const/4 v8, 0x0

    .line 2278
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2279
    const/4 v6, 0x0

    .line 2280
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_0

    move-object v8, v6

    .line 2327
    :goto_0
    return-object v8

    .line 2283
    :cond_0
    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2284
    const-string v9, "certificate"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v9

    iput-object v9, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 2287
    iget-object v9, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v9}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2288
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v9, "index"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2292
    .local v3, index:I
    monitor-enter v5

    .line 2293
    :try_start_0
    const-string v9, "history"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2295
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 2298
    .local v7, size:I
    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    .line 2299
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 2315
    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v7           #size:I
    :catchall_0
    move-exception v8

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 2301
    .restart local v1       #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .restart local v7       #size:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 2302
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2303
    .local v0, data:[B
    if-nez v0, :cond_3

    .line 2306
    monitor-exit v5

    goto :goto_0

    .line 2308
    :cond_3
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 2309
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 2301
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2312
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 2314
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 2315
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2317
    const-string/jumbo v8, "privateBrowsingEnabled"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2318
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebSettings;->setPrivateBrowsingEnabled(Z)V

    .line 2320
    :cond_5
    iget-object v8, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v8, p1}, Landroid/webkit/ZoomManager;->restoreZoomState(Landroid/os/Bundle;)V

    .line 2323
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 2325
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_6
    move-object v8, v6

    .line 2327
    goto/16 :goto_0
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 3596
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3597
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3598
    return-void
.end method

.method revealSelection()V
    .locals 2

    .prologue
    .line 6019
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 6020
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 6022
    :cond_0
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "strUrl"
    .parameter "strPath"

    .prologue
    .line 7410
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewCore;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1849
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1850
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .parameter "b"
    .parameter "dest"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2110
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2111
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2112
    :cond_0
    const/4 v2, 0x0

    .line 2145
    :goto_0
    return v2

    .line 2114
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 2117
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2118
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebView$6;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebView$6;-><init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2142
    const-string/jumbo v2, "scrollX"

    iget v3, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2143
    const-string/jumbo v2, "scrollY"

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2144
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v2, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    .line 2145
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v7, 0x0

    .line 2053
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2054
    if-nez p1, :cond_0

    move-object v5, v7

    .line 2096
    :goto_0
    return-object v5

    .line 2059
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2060
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 2061
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 2064
    .local v6, size:I
    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v5, v7

    .line 2065
    goto :goto_0

    .line 2067
    :cond_2
    const-string v8, "index"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2071
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2072
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 2073
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 2074
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_3

    .line 2077
    const-string/jumbo v8, "webview"

    const-string/jumbo v9, "saveState: Unexpected null history item."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    .line 2078
    goto :goto_0

    .line 2080
    :cond_3
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 2081
    .local v1, data:[B
    if-nez v1, :cond_4

    move-object v5, v7

    .line 2085
    goto :goto_0

    .line 2087
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2072
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2089
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_5
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2090
    iget-object v7, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_6

    .line 2091
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2094
    :cond_6
    const-string/jumbo v7, "privateBrowsingEnabled"

    invoke-virtual {p0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2095
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7, p1}, Landroid/webkit/ZoomManager;->saveZoomState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public saveViewState(Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "stream"

    .prologue
    .line 2225
    :try_start_0
    invoke-static {p1, p0}, Landroid/webkit/ViewStateSerializer;->serializeViewState(Ljava/io/OutputStream;Landroid/webkit/WebView;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2229
    :goto_0
    return v1

    .line 2226
    :catch_0
    move-exception v0

    .line 2227
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v1, "webview"

    const-string v2, "Failed to saveViewState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2229
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"

    .prologue
    .line 2481
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2482
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 2483
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0
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
    .line 2511
    .local p3, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2512
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->saveWebArchiveImpl(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    .line 2513
    return-void
.end method

.method scrollFocusedTextInputX(F)V
    .locals 4
    .parameter "xPercent"

    .prologue
    .line 9420
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 9425
    :cond_0
    :goto_0
    return-void

    .line 9423
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method scrollFocusedTextInputY(I)V
    .locals 4
    .parameter "y"

    .prologue
    .line 9432
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 9436
    :cond_0
    :goto_0
    return-void

    .line 9435
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .line 6647
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_1

    .line 6658
    :cond_0
    :goto_0
    return-void

    .line 6648
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6649
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v1, :cond_2

    .line 6651
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectableText()Landroid/graphics/Point;

    move-result-object v0

    .line 6652
    .local v0, select:Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->selectText(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6654
    .end local v0           #select:Landroid/graphics/Point;
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectAll()V

    .line 6655
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 6656
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 6657
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public selectAllSec()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 6999
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_1

    .line 7022
    :cond_0
    :goto_0
    return v0

    .line 7000
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->setUpAdvSelect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7003
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    .line 7004
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 7005
    .local v7, pos:Landroid/graphics/Point;
    const/4 v4, 0x1

    .line 7007
    .local v4, bhaveSelection:Z
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-nez v0, :cond_2

    .line 7009
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectableText()Landroid/graphics/Point;

    move-result-object v7

    .line 7010
    const/4 v4, 0x0

    .line 7016
    :cond_2
    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 7019
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7022
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectLastTouchText()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 6849
    const/4 v7, 0x0

    .line 6850
    .local v7, result:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 6851
    invoke-direct {p0}, Landroid/webkit/WebView;->setUpAdvSelect()Z

    move-result v0

    if-nez v0, :cond_0

    move v8, v7

    .line 6870
    .end local v7           #result:Z
    .local v8, result:I
    :goto_0
    return v8

    .line 6854
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_0
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    .line 6855
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v3, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 6856
    .local v1, x:I
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 6859
    .local v2, y:I
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 6862
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0xd4

    invoke-virtual {v0, v3, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6867
    iput-boolean v4, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 6868
    const/4 v7, 0x1

    .end local v1           #x:I
    .end local v2           #y:I
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_1
    move v8, v7

    .line 6870
    .restart local v8       #result:I
    goto :goto_0
.end method

.method public selectText()Z
    .locals 4

    .prologue
    .line 5160
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:I

    iget v3, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 5161
    .local v0, x:I
    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 5162
    .local v1, y:I
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->selectText(II)Z

    move-result v2

    return v2
.end method

.method selectText(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5169
    invoke-direct {p0, v1, p1, p2}, Landroid/webkit/WebView;->setUpSelect(ZII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5175
    :goto_0
    return v0

    .line 5172
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 5173
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 5174
    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    move v0, v1

    .line 5175
    goto :goto_0
.end method

.method selectionDone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6664
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_0

    .line 6665
    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 6673
    iget-object v0, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    invoke-virtual {v0}, Landroid/webkit/SelectActionModeCallback;->finish()V

    .line 6674
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mSelectCallback:Landroid/webkit/SelectActionModeCallback;

    .line 6675
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 6676
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 6677
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 6678
    iput v1, p0, Landroid/webkit/WebView;->mAutoScrollX:I

    .line 6679
    iput v1, p0, Landroid/webkit/WebView;->mAutoScrollY:I

    .line 6680
    iput-boolean v1, p0, Landroid/webkit/WebView;->mSentAutoScrollMessage:Z

    .line 6682
    :cond_0
    return-void
.end method

.method sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/16 v4, 0x6b

    .line 3205
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3236
    :goto_0
    return-object v0

    .line 3206
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 3208
    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3209
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_1

    .line 3210
    iget-object v0, p0, Landroid/webkit/WebView;->mScrollOffset:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3211
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 3212
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v2

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Landroid/webkit/WebView;->mScrollOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 3215
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3217
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_2

    .line 3219
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3221
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3231
    iget-boolean v0, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-nez v0, :cond_3

    .line 3232
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x74

    iget-object v2, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3234
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3236
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView;->mVisibleRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 3212
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method sendPluginDrawMsg()V
    .locals 2

    .prologue
    .line 9588
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 9589
    return-void
.end method

.method sendViewSizeZoom(Z)Z
    .locals 11
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3299
    iget-boolean v9, p0, Landroid/webkit/WebView;->mBlockWebkitViewMessages:Z

    if-eqz v9, :cond_1

    .line 3371
    :cond_0
    :goto_0
    return v7

    .line 3300
    :cond_1
    iget-object v9, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->isPreventingWebkitUpdates()Z

    move-result v9

    if-nez v9, :cond_0

    .line 3309
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 3311
    .local v6, viewWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    sub-int v5, v9, v10

    .line 3313
    .local v5, viewHeight:I
    const/4 v4, 0x0

    .line 3314
    .local v4, newWidth:I
    const/4 v3, 0x0

    .line 3316
    .local v3, newHeight:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseEmailViewPort()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v9

    sget-object v10, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v9, v10, :cond_5

    .line 3318
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v4

    .line 3319
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v9

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v10

    sub-int v3, v9, v10

    .line 3327
    :goto_1
    int-to-float v9, v5

    int-to-float v10, v6

    div-float v2, v9, v10

    .line 3336
    .local v2, heightWidthRatio:F
    iget v9, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-le v4, v9, :cond_2

    iget-boolean v9, p0, Landroid/webkit/WebView;->mWrapContent:Z

    if-eqz v9, :cond_2

    .line 3337
    const/4 v3, 0x0

    .line 3338
    const/4 v2, 0x0

    .line 3341
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 3343
    .local v0, actualViewHeight:I
    iget v9, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v4, v9, :cond_3

    iget v9, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v3, v9, :cond_3

    if-nez p1, :cond_3

    iget v9, p0, Landroid/webkit/WebView;->mLastActualHeightSent:I

    if-eq v0, v9, :cond_0

    .line 3345
    :cond_3
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3346
    .local v1, data:Landroid/webkit/WebView$ViewSizeData;
    iput v4, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3347
    iput v3, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3348
    iput v2, v1, Landroid/webkit/WebView$ViewSizeData;->mHeightWidthRatio:F

    .line 3349
    iput v0, v1, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    .line 3352
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseEmailViewPort()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v9

    sget-object v10, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v9, v10, :cond_6

    .line 3354
    iput v4, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3359
    :goto_2
    iget-object v9, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->getScale()F

    move-result v9

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3360
    iget-object v9, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v9}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v9, :cond_4

    move v7, v8

    :cond_4
    iput-boolean v7, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3362
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getDocumentAnchorX()I

    move-result v7

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3363
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->getDocumentAnchorY()I

    move-result v7

    iput v7, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    .line 3364
    iget-object v7, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x69

    invoke-virtual {v7, v9, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3365
    iput v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 3366
    iput v3, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3367
    iput v0, p0, Landroid/webkit/WebView;->mLastActualHeightSent:I

    .line 3368
    iget-object v7, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v7}, Landroid/webkit/ZoomManager;->clearDocumentAnchor()V

    move v7, v8

    .line 3369
    goto/16 :goto_0

    .line 3321
    .end local v0           #actualViewHeight:I
    .end local v1           #data:Landroid/webkit/WebView$ViewSizeData;
    .end local v2           #heightWidthRatio:F
    :cond_5
    int-to-float v9, v6

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3322
    int-to-float v9, v5

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto/16 :goto_1

    .line 3356
    .restart local v0       #actualViewHeight:I
    .restart local v1       #data:Landroid/webkit/WebView$ViewSizeData;
    .restart local v2       #heightWidthRatio:F
    :cond_6
    int-to-float v9, v6

    iget-object v10, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v10}, Landroid/webkit/ZoomManager;->getTextWrapScale()F

    move-result v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    goto :goto_2
.end method

.method setActive(Z)V
    .locals 3
    .parameter "active"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7204
    if-eqz p1, :cond_4

    .line 7205
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7207
    instance-of v2, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_1

    .line 7208
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 7209
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "setActive, has Focus() mDrawCursorRing set to false for HTMLComposer only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7253
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7254
    return-void

    .line 7216
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 7217
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-nez v0, :cond_0

    .line 7218
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    goto :goto_0

    .line 7224
    :cond_3
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 7225
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7228
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    goto :goto_0

    .line 7235
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->isZoomPickerVisible()Z

    move-result v1

    if-nez v1, :cond_5

    .line 7244
    iget-boolean v1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-nez v1, :cond_5

    .line 7245
    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 7248
    :cond_5
    iget-object v1, p0, Landroid/webkit/WebView;->mKeysPressed:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 7249
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7250
    const/4 v1, 0x7

    iput v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7251
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    goto :goto_0
.end method

.method public setAutoTextSelection(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 6931
    iput-boolean p1, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    .line 6932
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 11759
    iput p1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 11760
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 11761
    return-void
.end method

.method setBaseLayer(ILandroid/graphics/Region;ZZZ)V
    .locals 1
    .parameter "layer"
    .parameter "invalRegion"
    .parameter "showVisualIndicator"
    .parameter "isPictureAfterFirstLayout"
    .parameter "registerPageSwapCallback"

    .prologue
    .line 5311
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 5318
    :cond_0
    :goto_0
    return-void

    .line 5313
    :cond_1
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->nativeSetBaseLayer(ILandroid/graphics/Region;ZZZ)V

    .line 5315
    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 5316
    iget-object v0, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy;->setBaseLayer(I)V

    goto :goto_0
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 1829
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1834
    iput-object p1, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1835
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4382
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4383
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 4384
    return-void
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 3016
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3026
    :goto_0
    return-void

    .line 3017
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3018
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 3020
    :cond_1
    if-eqz p1, :cond_2

    .line 3021
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3025
    :cond_2
    iput-object p1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method setFocusControllerActive(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/4 v1, 0x0

    .line 7290
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 7297
    :cond_0
    :goto_0
    return-void

    .line 7291
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x8e

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 7293
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 7294
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 7295
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mListBoxMessage:Landroid/os/Message;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 7291
    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 7481
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result v0

    .line 7482
    .local v0, changed:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_0

    .line 7489
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 7491
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->setGLRectViewport()V

    .line 7492
    return v0
.end method

.method setGLRectViewport()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 7458
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    .line 7459
    .local v3, visible:Z
    if-eqz v3, :cond_0

    .line 7461
    invoke-virtual {p0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 7462
    .local v0, rootView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 7463
    .local v1, rootViewHeight:I
    iget-object v4, p0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7464
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 7465
    .local v2, savedWebViewBottom:I
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    invoke-direct {p0}, Landroid/webkit/WebView;->getVisibleTitleHeightImpl()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 7466
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    sub-int v6, v1, v2

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 7467
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    .line 7471
    .end local v0           #rootView:Landroid/view/View;
    .end local v1           #rootViewHeight:I
    .end local v2           #savedWebViewBottom:I
    :goto_0
    iget-object v4, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->calcOurContentVisibleRectF(Landroid/graphics/RectF;)V

    .line 7472
    iget-boolean v4, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v4, :cond_1

    move-object v4, v5

    :goto_1
    iget-boolean v6, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    if-eqz v6, :cond_2

    :goto_2
    iget-object v6, p0, Landroid/webkit/WebView;->mVisibleContentRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4, v5, v6}, Landroid/webkit/WebView;->nativeUpdateDrawGLFunction(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 7474
    return-void

    .line 7469
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebView;->mGLViewportEmpty:Z

    goto :goto_0

    .line 7472
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebView;->mGLRectViewport:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/webkit/WebView;->mViewRectViewport:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method public setHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 11791
    iput-object p1, p0, Landroid/webkit/WebView;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 11792
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1716
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1717
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1718
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1864
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1865
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .parameter "scaleInPercent"

    .prologue
    .line 2808
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2809
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->setInitialScaleInPercent(I)V

    .line 2810
    return-void
.end method

.method public setInvalidatedCountByDoubleTap(I)V
    .locals 0
    .parameter "c"

    .prologue
    .line 4845
    iput p1, p0, Landroid/webkit/WebView;->cnt:I

    .line 4846
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 2012
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2013
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2014
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 5033
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 5034
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mWrapContent:Z

    .line 5036
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5037
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .parameter "setMap"

    .prologue
    .line 8899
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 8900
    iput-boolean p1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 8901
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 6162
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebViewCore;->setMockDeviceOrientation(ZDZDZD)V

    .line 6164
    return-void
.end method

.method public setNativeBrowser(Z)V
    .locals 2
    .parameter "mNative"

    .prologue
    .line 5220
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mNativeBrowser:Z

    .line 5221
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_0

    .line 5222
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    iget-boolean v1, p0, Landroid/webkit/WebView;->mNativeBrowser:Z

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->setNativeBrowser(Z)V

    .line 5223
    :cond_0
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .parameter "networkUp"

    .prologue
    const/4 v1, 0x0

    .line 2023
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2024
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x77

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2026
    return-void

    :cond_0
    move v0, v1

    .line 2024
    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 2033
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2034
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2035
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2038
    return-void
.end method

.method setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V
    .locals 13
    .parameter "draw"
    .parameter "updateBaseLayer"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 11034
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_2

    .line 11035
    iget-object v0, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    if-eqz v0, :cond_0

    .line 11036
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to setNewPicture with a delay picture already set! (memory leak)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11040
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebView;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;

    .line 11106
    :cond_1
    :goto_0
    return-void

    .line 11043
    :cond_2
    iget-object v10, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 11044
    .local v10, viewState:Landroid/webkit/WebViewCore$ViewState;
    if-eqz v10, :cond_7

    move v4, v11

    .line 11046
    .local v4, isPictureAfterFirstLayout:Z
    :goto_1
    if-eqz p2, :cond_3

    .line 11048
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    move v5, v11

    .line 11051
    .local v5, registerPageSwapCallback:Z
    :goto_2
    iget v1, p1, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    iget-object v2, p1, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getShowVisualIndicator()Z

    move-result v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->setBaseLayer(ILandroid/graphics/Region;ZZZ)V

    .line 11055
    .end local v5           #registerPageSwapCallback:Z
    :cond_3
    iget-object v9, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 11061
    .local v9, viewSize:Landroid/graphics/Point;
    iget v0, v9, Landroid/graphics/Point;->x:I

    iget v1, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v0, v1, :cond_9

    iget v0, v9, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v0, v1, :cond_9

    move v8, v11

    .line 11066
    .local v8, updateLayout:Z
    :goto_3
    iput-boolean v12, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    .line 11067
    iget-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p1, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1, v8}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 11069
    if-eqz v4, :cond_4

    .line 11071
    iput v12, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 11072
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onFirstLayout(Landroid/webkit/WebViewCore$DrawData;)V

    .line 11073
    iget-boolean v0, v10, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentWidth()I

    move-result v6

    .line 11075
    .local v6, scrollX:I
    :goto_4
    iget v7, v10, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    .line 11076
    .local v7, scrollY:I
    invoke-direct {p0, v6, v7}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    .line 11077
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v0, :cond_4

    .line 11082
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearTextEntry()V

    .line 11085
    .end local v6           #scrollX:I
    .end local v7           #scrollY:I
    :cond_4
    iput-boolean v11, p0, Landroid/webkit/WebView;->mSendScrollEvent:Z

    .line 11091
    iget-object v0, p1, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V

    .line 11093
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    if-eqz v0, :cond_5

    .line 11094
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 11098
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->onNewPicture(Landroid/webkit/WebViewCore$DrawData;)V

    .line 11100
    iget-boolean v0, p1, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11101
    iput-boolean v11, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 11103
    :cond_6
    if-eqz v4, :cond_1

    .line 11104
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    goto/16 :goto_0

    .end local v4           #isPictureAfterFirstLayout:Z
    .end local v8           #updateLayout:Z
    .end local v9           #viewSize:Landroid/graphics/Point;
    :cond_7
    move v4, v12

    .line 11044
    goto/16 :goto_1

    .restart local v4       #isPictureAfterFirstLayout:Z
    :cond_8
    move v5, v12

    .line 11048
    goto :goto_2

    .restart local v9       #viewSize:Landroid/graphics/Point;
    :cond_9
    move v8, v12

    .line 11061
    goto :goto_3

    .line 11073
    .restart local v8       #updateLayout:Z
    :cond_a
    iget v6, v10, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    goto :goto_4
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1625
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 1626
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1627
    iget-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    if-nez v0, :cond_0

    .line 1628
    new-instance v0, Landroid/webkit/OverScrollGlow;

    invoke-direct {v0, p0}, Landroid/webkit/OverScrollGlow;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mOverScrollGlow:Landroid/webkit/OverScrollGlow;

    goto :goto_0
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4446
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4447
    iput-object p1, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 4448
    return-void
.end method

.method public setPinchZoomListener(Landroid/webkit/PinchZoomListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 4453
    iput-object p1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/PinchZoomListener;

    .line 4454
    return-void
.end method

.method public setPreserveZoom(Z)V
    .locals 0
    .parameter "preserveZoom"

    .prologue
    .line 1195
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    .line 1196
    return-void
.end method

.method public setReaderFlag(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 12700
    iget-boolean v0, p0, Landroid/webkit/WebView;->mReaderFlag:Z

    if-eq v0, p1, :cond_0

    .line 12701
    iput-boolean p1, p0, Landroid/webkit/WebView;->mReaderFlag:Z

    .line 12703
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 1702
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_1

    .line 1704
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1708
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 1709
    return-void

    .line 1706
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setSelection(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5641
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    .line 5642
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5644
    :cond_0
    return-void
.end method

.method public setSelectionCallback(Landroid/webkit/SelectActionModeCallbackSec;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 12049
    iput-object p1, p0, Landroid/webkit/WebView;->mSelectCallbackUser:Landroid/webkit/SelectActionModeCallbackSec;

    .line 12050
    return-void
.end method

.method public setTextSelecitonAt(II)Z
    .locals 4
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 6881
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    if-nez v2, :cond_0

    .line 6882
    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 6883
    .local v0, contentX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 6884
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->selectClosestWord(II)Z

    move-result v2

    .line 6886
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTextSelecitonManualAtContentPoint(II)Z
    .locals 8
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 6900
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v7, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    if-nez v0, :cond_0

    .line 6901
    invoke-direct {p0}, Landroid/webkit/WebView;->setUpAdvSelect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6920
    :cond_0
    :goto_0
    return v4

    .line 6904
    :cond_1
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusControllerActive(Z)V

    .line 6905
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 6907
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6912
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2

    .line 6913
    iput-boolean v7, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 6916
    :cond_2
    iput-boolean v4, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 6917
    iput v7, p0, Landroid/webkit/WebView;->mRequestNewSelection:I

    move v4, v7

    .line 6918
    goto :goto_0
.end method

.method public setTitleBarGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 3035
    iput p1, p0, Landroid/webkit/WebView;->mTitleGravity:I

    .line 3037
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3038
    return-void
.end method

.method public setTouchInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 11801
    iput p1, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 11802
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1725
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 1726
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 1727
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4427
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 4428
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4393
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4394
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4395
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 3
    .parameter "client"

    .prologue
    .line 4356
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 4357
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4360
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadByBrowser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_double_tap"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4361
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/ZoomManager;->registerTockTockListener(Landroid/content/Context;)V

    .line 4363
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 1561
    const/4 v0, 0x1

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "text"
    .parameter "showIme"

    .prologue
    const/4 v1, 0x1

    .line 3791
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 3792
    new-instance v0, Landroid/webkit/FindActionModeCallback;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/webkit/FindActionModeCallback;-><init>(Landroid/content/Context;)V

    .line 3793
    .local v0, callback:Landroid/webkit/FindActionModeCallback;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3795
    :cond_0
    const/4 v1, 0x0

    .line 3814
    :cond_1
    :goto_0
    return v1

    .line 3797
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/WebView;->mCachedOverlappingActionModeHeight:I

    .line 3798
    iput-object v0, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    .line 3799
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 3800
    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/FindActionModeCallback;->setWebView(Landroid/webkit/WebView;)V

    .line 3801
    if-eqz p2, :cond_5

    .line 3802
    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->showSoftInput()V

    .line 3808
    :cond_3
    if-nez p1, :cond_4

    .line 3809
    iget-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    .line 3811
    :cond_4
    if-eqz p1, :cond_1

    .line 3812
    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 3803
    :cond_5
    if-eqz p1, :cond_3

    .line 3804
    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2, p1}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 3805
    iget-object v2, p0, Landroid/webkit/WebView;->mFindCallback:Landroid/webkit/FindActionModeCallback;

    invoke-virtual {v2}, Landroid/webkit/FindActionModeCallback;->findAll()V

    goto :goto_0
.end method

.method public status_mSelectingText()Z
    .locals 3

    .prologue
    .line 8853
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSelectingText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8854
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    return v0
.end method

.method public status_mSelectionStarted()Z
    .locals 3

    .prologue
    .line 8857
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSelectionStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectionStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8858
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectionStarted:Z

    return v0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 2525
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 2528
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2529
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2530
    return-void
.end method

.method public stopScroll()V
    .locals 2

    .prologue
    .line 3947
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 3948
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 3949
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 4

    .prologue
    .line 5587
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    .line 5602
    :cond_0
    :goto_0
    return-void

    .line 5588
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5589
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 5590
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 5591
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5592
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 5593
    .local v0, oldScrollX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 5594
    .local v1, oldScrollY:I
    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/view/View;->mScrollX:I

    .line 5595
    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 5596
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v0, v2, :cond_3

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v1, v2, :cond_4

    .line 5597
    :cond_3
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0

    .line 5599
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public textChangedForWatcher()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7359
    iget-object v0, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 7360
    iget-object v0, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 7361
    :cond_0
    return-void
.end method

.method public textChangedForWatcher(Z)V
    .locals 4
    .parameter "isTextChanged"

    .prologue
    const/4 v1, 0x0

    .line 7364
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 7365
    .local v0, temp:I
    :goto_0
    iget-object v2, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_0

    .line 7367
    iget-object v2, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    const-string v3, ""

    invoke-interface {v2, v3, v1, v1, v0}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 7369
    :cond_0
    return-void

    .end local v0           #temp:I
    :cond_1
    move v0, v1

    .line 7364
    goto :goto_0
.end method

.method textFieldDrag(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 9461
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 9469
    :goto_0
    return v0

    .line 9464
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    .line 9465
    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getTop()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 9467
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 9468
    .local v0, result:Z
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    goto :goto_0
.end method

.method public tileProfilingClear()V
    .locals 0

    .prologue
    .line 11866
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingClear()V

    .line 11867
    return-void
.end method

.method public tileProfilingGetFloat(IILjava/lang/String;)F
    .locals 1
    .parameter "frame"
    .parameter "tile"
    .parameter "key"

    .prologue
    .line 11882
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeTileProfilingGetFloat(IILjava/lang/String;)F

    move-result v0

    return v0
.end method

.method public tileProfilingGetInt(IILjava/lang/String;)I
    .locals 1
    .parameter "frame"
    .parameter "tile"
    .parameter "key"

    .prologue
    .line 11878
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->nativeTileProfilingGetInt(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public tileProfilingNumFrames()I
    .locals 1

    .prologue
    .line 11870
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingNumFrames()I

    move-result v0

    return v0
.end method

.method public tileProfilingNumTilesInFrame(I)I
    .locals 1
    .parameter "frame"

    .prologue
    .line 11874
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeTileProfilingNumTilesInFrame(I)I

    move-result v0

    return v0
.end method

.method public tileProfilingStart()V
    .locals 0

    .prologue
    .line 11853
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingStart()V

    .line 11854
    return-void
.end method

.method public tileProfilingStop()F
    .locals 1

    .prologue
    .line 11861
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTileProfilingStop()F

    move-result v0

    return v0
.end method

.method touchUpOnTextField(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 9478
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 9485
    :goto_0
    return-void

    .line 9481
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 9482
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 9483
    .local v2, y:I
    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    .line 9484
    .local v0, slop:I
    invoke-direct {p0, v1, v2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    goto :goto_0
.end method

.method public unmarkWord(Ljava/lang/String;)V
    .locals 2
    .parameter "word"

    .prologue
    .line 12514
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 12520
    :goto_0
    return-void

    .line 12519
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xf0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected updateCachedTextfield(Ljava/lang/String;)V
    .locals 1
    .parameter "updatedText"

    .prologue
    .line 11812
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->nativeUpdateCachedTextfield(Ljava/lang/String;I)V

    .line 11813
    return-void
.end method

.method updateDefaultZoomDensity(F)V
    .locals 1
    .parameter "density"

    .prologue
    .line 1642
    const/high16 v0, 0x4180

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1643
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    .line 1644
    return-void
.end method

.method updateDoubleTapZoom(I)V
    .locals 1
    .parameter "doubleTapZoom"

    .prologue
    .line 3378
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateDoubleTapZoom(I)V

    .line 3379
    return-void
.end method

.method updateDrawingState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3642
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 3650
    :cond_0
    :goto_0
    return-void

    .line 3643
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3644
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    .line 3645
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3646
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-static {v0, v1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    goto :goto_0

    .line 3648
    :cond_3
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/webkit/WebView;->nativeSetPauseDrawing(IZ)V

    goto :goto_0
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1509
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0, p1}, Landroid/webkit/ZoomManager;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1510
    return-void
.end method

.method updateScrollCoordinates(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 9178
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 9179
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 9180
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 9181
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 9182
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v1, v2, :cond_1

    .line 9183
    :cond_0
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 9184
    const/4 v2, 0x1

    .line 9186
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateWebTextViewPadding()V
    .locals 6

    .prologue
    .line 6003
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 6004
    .local v0, paddingRect:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 6007
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 6013
    :cond_0
    return-void
.end method

.method public useMockDeviceOrientation()V
    .locals 2

    .prologue
    .line 6152
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 6153
    return-void
.end method

.method viewToContentDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 3048
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method viewToContentX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 3057
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentXf(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 3075
    int-to-float v0, p1

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method viewToContentY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 3066
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentYf(I)F
    .locals 2
    .parameter "y"

    .prologue
    .line 3085
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v1}, Landroid/webkit/ZoomManager;->getInvScale()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 9383
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 9384
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 9392
    invoke-static {}, Landroid/webkit/WebView;->checkThread()V

    .line 9393
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomManager:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->zoomOut()Z

    move-result v0

    return v0
.end method
