.class public Landroid/view/View;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Drawable$Callback2;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/accessibility/AccessibilityEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$AccessibilityDelegate;,
        Landroid/view/View$SendViewScrolledAccessibilityEvent;,
        Landroid/view/View$ScrollabilityCache;,
        Landroid/view/View$AttachInfo;,
        Landroid/view/View$BaseSavedState;,
        Landroid/view/View$UnsetPressedState;,
        Landroid/view/View$OnAttachStateChangeListener;,
        Landroid/view/View$OnSystemUiVisibilityChangeListener;,
        Landroid/view/View$OnCreateContextMenuListener;,
        Landroid/view/View$OnClickListener;,
        Landroid/view/View$OnFocusChangeListener;,
        Landroid/view/View$OnDragListener;,
        Landroid/view/View$OnLongClickListener;,
        Landroid/view/View$OnGenericMotionListener;,
        Landroid/view/View$OnHoverListener;,
        Landroid/view/View$OnTouchListener;,
        Landroid/view/View$OnKeyListener;,
        Landroid/view/View$PerformClick;,
        Landroid/view/View$CheckForTap;,
        Landroid/view/View$CheckForLongPress;,
        Landroid/view/View$MeasureSpec;,
        Landroid/view/View$DragShadowBuilder;,
        Landroid/view/View$OnLayoutChangeListener;,
        Landroid/view/View$ListenerInfo;,
        Landroid/view/View$TransformationInfo;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CURSOR_POSITION_UNDEFINED:I = -0x1

.field public static final ACCESSIBILITY_FOCUSABLE_AUTO:I = 0x0

.field static final ACCESSIBILITY_FOCUSABLE_DEFAULT:I = 0x0

.field static final ACCESSIBILITY_FOCUSABLE_MASK:I = 0x60000000

.field public static final ACCESSIBILITY_FOCUSABLE_NO:I = 0x2

.field static final ACCESSIBILITY_FOCUSABLE_SHIFT:I = 0x1d

.field public static final ACCESSIBILITY_FOCUSABLE_YES:I = 0x1

.field static final ACCESSIBILITY_FOCUSED:I = 0x4000000

.field public static final ACCESSIBILITY_FOCUS_BACKWARD:I = 0x1001

.field public static final ACCESSIBILITY_FOCUS_DOWN:I = 0x1082

.field public static final ACCESSIBILITY_FOCUS_FORWARD:I = 0x1002

.field public static final ACCESSIBILITY_FOCUS_LEFT:I = 0x1011

.field public static final ACCESSIBILITY_FOCUS_RIGHT:I = 0x1042

.field public static final ACCESSIBILITY_FOCUS_UP:I = 0x1021

.field static final ACCESSIBILITY_STATE_CHANGED:I = 0x8000000

.field static final ACTIVATED:I = 0x40000000

.field public static final ALPHA:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final ALPHA_SET:I = 0x40000

.field static final ANIMATION_STARTED:I = 0x10000

.field private static final AWAKEN_SCROLL_BARS_ON_ATTACH:I = 0x8000000

.field static final CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field static final CLICKABLE:I = 0x4000

.field private static final DBG:Z = false

.field public static final DEBUG_LAYOUT_PROPERTY:Ljava/lang/String; = "debug.layout"

.field static final DIRTY:I = 0x200000

.field static final DIRTY_MASK:I = 0x600000

.field static final DIRTY_OPAQUE:I = 0x400000

.field static final DISABLED:I = 0x20

.field static final DRAG_CAN_ACCEPT:I = 0x1

.field public static final DRAG_FLAG_GLOBAL:I = 0x1

.field static final DRAG_HOVERED:I = 0x2

.field static final DRAG_MASK:I = 0x3

.field static final DRAWABLE_STATE_DIRTY:I = 0x400

.field static final DRAWING_CACHE_ENABLED:I = 0x8000

.field public static final DRAWING_CACHE_QUALITY_AUTO:I = 0x0

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I = null

.field public static final DRAWING_CACHE_QUALITY_HIGH:I = 0x100000

.field public static final DRAWING_CACHE_QUALITY_LOW:I = 0x80000

.field static final DRAWING_CACHE_QUALITY_MASK:I = 0x180000

.field static final DRAWING_CACHE_VALID:I = 0x8000

.field static final DRAWN:I = 0x20

.field static final DRAW_ANIMATION:I = 0x40

.field static final DRAW_MASK:I = 0x80

.field static final DUPLICATE_PARENT_STATE:I = 0x400000

.field protected static final EMPTY_STATE_SET:[I = null

.field static final ENABLED:I = 0x0

.field protected static final ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final ENABLED_MASK:I = 0x20

.field protected static final ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final ENABLED_STATE_SET:[I = null

.field protected static final ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final FADING_EDGE_HORIZONTAL:I = 0x1000

.field static final FADING_EDGE_MASK:I = 0x3000

.field static final FADING_EDGE_NONE:I = 0x0

.field static final FADING_EDGE_VERTICAL:I = 0x2000

.field static final FILTER_TOUCHES_WHEN_OBSCURED:I = 0x400

.field public static final FIND_VIEWS_WITH_ACCESSIBILITY_NODE_PROVIDERS:I = 0x4

.field public static final FIND_VIEWS_WITH_CONTENT_DESCRIPTION:I = 0x2

.field public static final FIND_VIEWS_WITH_TEXT:I = 0x1

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field public static final FOCUSABLES_ACCESSIBILITY:I = 0x2

.field public static final FOCUSABLES_ALL:I = 0x0

.field public static final FOCUSABLES_TOUCH_MODE:I = 0x1

.field static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final FOCUSABLE_MASK:I = 0x1

.field static final FOCUSED:I = 0x2

.field protected static final FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final FOCUS_ACCESSIBILITY:I = 0x1000

.field public static final FOCUS_BACKWARD:I = 0x1

.field public static final FOCUS_DOWN:I = 0x82

.field public static final FOCUS_FORWARD:I = 0x2

.field public static final FOCUS_LEFT:I = 0x11

.field public static final FOCUS_RIGHT:I = 0x42

.field public static final FOCUS_UP:I = 0x21

.field static final FORCE_LAYOUT:I = 0x1000

.field public static final GONE:I = 0x8

.field public static final HAPTIC_FEEDBACK_ENABLED:I = 0x10000000

.field static final HAS_BOUNDS:I = 0x10

.field static final HAS_TRANSIENT_STATE:I = 0x100

.field private static final HOVERED:I = 0x10000000

.field private static final HOVERING_UI_DISABLED:I = 0x2

.field private static final HOVERING_UI_ENABLED:I = 0x1

.field private static final HOVERING_UI_MASK:I = 0xf

.field private static final HOVERING_UI_NOT_DECIDED:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field static final IMPORTANT_FOR_ACCESSIBILITY_DEFAULT:I = 0x0

.field static final IMPORTANT_FOR_ACCESSIBILITY_MASK:I = 0x300000

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field static final IMPORTANT_FOR_ACCESSIBILITY_SHIFT:I = 0x14

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field static final INVALIDATED:I = -0x80000000

.field public static final INVISIBLE:I = 0x4

.field static final IS_ROOT_NAMESPACE:I = 0x8

.field public static final KEEP_SCREEN_ON:I = 0x4000000

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final LAYOUT_DIRECTION_DEFAULT:I = 0x2

.field private static final LAYOUT_DIRECTION_FLAGS:[I = null

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field static final LAYOUT_DIRECTION_MASK:I = 0xc

.field static final LAYOUT_DIRECTION_MASK_SHIFT:I = 0x2

.field static final LAYOUT_DIRECTION_RESOLVED:I = 0x20

.field static final LAYOUT_DIRECTION_RESOLVED_MASK:I = 0x30

.field static final LAYOUT_DIRECTION_RESOLVED_RTL:I = 0x10

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field static final LAYOUT_REQUIRED:I = 0x2000

.field static final LONG_CLICKABLE:I = 0x200000

.field static final MEASURED_DIMENSION_SET:I = 0x800

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field private static final NONZERO_EPSILON:F = 0.0010f

.field private static final NOT_FOCUSABLE:I = 0x0

.field public static final NO_ID:I = -0x1

.field static final ONLY_DRAWS_BACKGROUND:I = 0x100

.field static final OPAQUE_BACKGROUND:I = 0x800000

.field static final OPAQUE_MASK:I = 0x1800000

.field static final OPAQUE_SCROLLBARS:I = 0x1000000

.field static final OPTIONAL_FITS_SYSTEM_WINDOWS:I = 0x800

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field static final PARENT_SAVE_DISABLED:I = 0x20000000

.field static final PARENT_SAVE_DISABLED_MASK:I = 0x20000000

.field private static final PIVOT_EXPLICITLY_SET:I = 0x20000000

.field private static final POPULATING_ACCESSIBILITY_EVENT_TYPES:I = 0x2a1bf

.field private static final PREPRESSED:I = 0x2000000

.field private static final PRESSED:I = 0x4000

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_STATE_SET:[I = null

.field protected static final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_STATE_SET:[I = null

.field protected static final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final PRESSED_WINDOW_FOCUSED_STATE_SET:[I = null

.field public static final PUBLIC_STATUS_BAR_VISIBILITY_MASK:I = 0xffff

.field static final REQUEST_TRANSPARENT_REGIONS:I = 0x200

.field public static final ROTATION:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final SAVE_DISABLED:I = 0x10000

.field static final SAVE_DISABLED_MASK:I = 0x10000

.field private static final SAVE_STATE_CALLED:I = 0x20000

.field public static final SCALE_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCREEN_STATE_OFF:I = 0x0

.field public static final SCREEN_STATE_ON:I = 0x1

.field static final SCROLLBARS_HORIZONTAL:I = 0x100

.field static final SCROLLBARS_INSET_MASK:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_INSET:I = 0x1000000

.field public static final SCROLLBARS_INSIDE_OVERLAY:I = 0x0

.field static final SCROLLBARS_MASK:I = 0x300

.field static final SCROLLBARS_NONE:I = 0x0

.field public static final SCROLLBARS_OUTSIDE_INSET:I = 0x3000000

.field static final SCROLLBARS_OUTSIDE_MASK:I = 0x2000000

.field public static final SCROLLBARS_OUTSIDE_OVERLAY:I = 0x2000000

.field static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field static final SCROLLBARS_VERTICAL:I = 0x200

.field public static final SCROLLBAR_POSITION_DEFAULT:I = 0x0

.field public static final SCROLLBAR_POSITION_LEFT:I = 0x1

.field public static final SCROLLBAR_POSITION_RIGHT:I = 0x2

.field static final SCROLL_CONTAINER:I = 0x80000

.field static final SCROLL_CONTAINER_ADDED:I = 0x100000

.field static final SELECTED:I = 0x4

.field protected static final SELECTED_STATE_SET:[I = null

.field protected static final SELECTED_WINDOW_FOCUSED_STATE_SET:[I = null

.field static final SKIP_DRAW:I = 0x80

.field public static final SOUND_EFFECTS_ENABLED:I = 0x8000000

.field public static final STATUS_BAR_DISABLE_BACK:I = 0x400000

.field public static final STATUS_BAR_DISABLE_CAPTURE:I = 0x2000000

.field public static final STATUS_BAR_DISABLE_CLOCK:I = 0x800000

.field public static final STATUS_BAR_DISABLE_EXPAND:I = 0x10000

.field public static final STATUS_BAR_DISABLE_HOME:I = 0x200000

.field public static final STATUS_BAR_DISABLE_NAVIGATION:I = 0x7200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final STATUS_BAR_DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final STATUS_BAR_DISABLE_RECENT:I = 0x1000000

.field public static final STATUS_BAR_DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final STATUS_BAR_DISABLE_TRAY:I = 0x4000000

.field public static final STATUS_BAR_HIDDEN:I = 0x1

.field public static final STATUS_BAR_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_CLEARABLE_FLAGS:I = 0x7

.field public static final SYSTEM_UI_FLAG_FULLSCREEN:I = 0x4

.field public static final SYSTEM_UI_FLAG_HIDE_NAVIGATION:I = 0x2

.field public static final SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN:I = 0x400

.field public static final SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION:I = 0x200

.field public static final SYSTEM_UI_FLAG_LAYOUT_STABLE:I = 0x100

.field public static final SYSTEM_UI_FLAG_LOW_PROFILE:I = 0x1

.field public static final SYSTEM_UI_FLAG_REMOVE_NAVIGATION:I = 0x8

.field public static final SYSTEM_UI_FLAG_VISIBLE:I = 0x0

.field public static final SYSTEM_UI_LAYOUT_FLAGS:I = 0x600

.field private static final TEXTSELECTION_DISABLED:I = 0x20

.field private static final TEXTSELECTION_ENABLED:I = 0x10

.field private static final TEXTSELECTION_MASK:I = 0xf0

.field private static final TEXTSELECTION_NOT_DECIDED:I = 0x0

.field public static final TEXT_ALIGNMENT_CENTER:I = 0x4

.field protected static TEXT_ALIGNMENT_DEFAULT:I = 0x0

.field private static final TEXT_ALIGNMENT_FLAGS:[I = null

.field public static final TEXT_ALIGNMENT_GRAVITY:I = 0x1

.field public static final TEXT_ALIGNMENT_INHERIT:I = 0x0

.field static final TEXT_ALIGNMENT_MASK:I = 0xe000

.field static final TEXT_ALIGNMENT_MASK_SHIFT:I = 0xd

.field static final TEXT_ALIGNMENT_RESOLVED:I = 0x10000

.field public static final TEXT_ALIGNMENT_RESOLVED_DEFAULT:I = 0x20000

.field static final TEXT_ALIGNMENT_RESOLVED_MASK:I = 0xe0000

.field static final TEXT_ALIGNMENT_RESOLVED_MASK_SHIFT:I = 0x11

.field public static final TEXT_ALIGNMENT_TEXT_END:I = 0x3

.field public static final TEXT_ALIGNMENT_TEXT_START:I = 0x2

.field public static final TEXT_ALIGNMENT_VIEW_END:I = 0x6

.field public static final TEXT_ALIGNMENT_VIEW_START:I = 0x5

.field public static final TEXT_DIRECTION_ANY_RTL:I = 0x2

.field protected static TEXT_DIRECTION_DEFAULT:I = 0x0

.field public static final TEXT_DIRECTION_FIRST_STRONG:I = 0x1

.field private static final TEXT_DIRECTION_FLAGS:[I = null

.field public static final TEXT_DIRECTION_INHERIT:I = 0x0

.field public static final TEXT_DIRECTION_LOCALE:I = 0x5

.field public static final TEXT_DIRECTION_LTR:I = 0x3

.field static final TEXT_DIRECTION_MASK:I = 0x1c0

.field static final TEXT_DIRECTION_MASK_SHIFT:I = 0x6

.field static final TEXT_DIRECTION_RESOLVED:I = 0x200

.field static final TEXT_DIRECTION_RESOLVED_DEFAULT:I = 0x400

.field static final TEXT_DIRECTION_RESOLVED_MASK:I = 0x1c00

.field static final TEXT_DIRECTION_RESOLVED_MASK_SHIFT:I = 0xa

.field public static final TEXT_DIRECTION_RTL:I = 0x4

.field public static final TRANSLATION_X:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Y:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final VIEW_IS_ANIMATING_ALPHA:I = 0x2

.field static final VIEW_IS_ANIMATING_TRANSFORM:I = 0x1

.field protected static final VIEW_LOG_TAG:Ljava/lang/String; = "View"

.field static final VIEW_QUICK_REJECTED:I = 0x10000000

.field static final VIEW_STATE_ACCELERATED:I = 0x40

.field static final VIEW_STATE_ACTIVATED:I = 0x20

.field static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field static final VIEW_STATE_ENABLED:I = 0x8

.field static final VIEW_STATE_FOCUSED:I = 0x4

.field static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I = null

.field static final VIEW_STATE_PRESSED:I = 0x10

.field static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I = null

.field static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field private static final VISIBILITY_FLAGS:[I = null

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I = 0x0

.field static final WANTS_FOCUS:I = 0x1

.field static final WILL_NOT_CACHE_DRAWING:I = 0x20000

.field static final WILL_NOT_DRAW:I = 0x80

.field protected static final WINDOW_FOCUSED_STATE_SET:[I

.field public static final X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static mScrollBarPositionPadding:I

.field private static sHoverUIEnableFlag:I

.field private static sNextAccessibilityViewId:I

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isPenSideButton:Z

.field private mAccessibilityCursorPosition:I

.field mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field mAccessibilityViewId:I

.field private mAnimator:Landroid/view/ViewPropertyAnimator;

.field mAttachInfo:Landroid/view/View$AttachInfo;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBackgroundSizeChanged:Z

.field protected mBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public mCachingFailed:Z

.field private mContentDescription:Ljava/lang/CharSequence;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAnimation:Landroid/view/animation/Animation;

.field private mDisablePenGestureforfactorytest:Z

.field mDisplayList:Landroid/view/DisplayList;

.field private mDrawableState:[I

.field private mDrawingCache:Landroid/graphics/Bitmap;

.field private mDrawingCacheBackgroundColor:I

.field private mEnablePenGesture:Z

.field private mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

.field private mHardwareLayer:Landroid/view/HardwareLayer;

.field private mHasPerformedLongPress:Z

.field protected mHoverPopup:Landroid/widget/HoverPopupWindow;

.field protected mHoverPopupType:I

.field mID:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        resolveId = true
    .end annotation
.end field

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mIsSetContextMenuZOrderToTop:Z

.field private mKeyedTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLastIsOpaque:Z

.field mLayerPaint:Landroid/graphics/Paint;

.field mLayerType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "SOFTWARE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "HARDWARE"
            .end subannotation
        }
    .end annotation
.end field

.field private mLayoutInsets:Landroid/graphics/Insets;

.field protected mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field protected mLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mListViewItemTag:Ljava/lang/Object;

.field mListenerInfo:Landroid/view/View$ListenerInfo;

.field mLocalDirtyRect:Landroid/graphics/Rect;

.field mMeasuredHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field mMeasuredWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mMinWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mNeededToChangedScrollBarPosition:Z

.field private mNextFocusDownId:I

.field mNextFocusForwardId:I

.field private mNextFocusLeftId:I

.field private mNextFocusRightId:I

.field private mNextFocusUpId:I

.field mOldHeightMeasureSpec:I

.field mOldWidthMeasureSpec:I

.field private mOverScrollMode:I

.field protected mPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mParent:Landroid/view/ViewParent;

.field private mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/view/View$CheckForTap;

.field private mPerformClick:Landroid/view/View$PerformClick;

.field mPrivateFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1000
                mask = 0x1000
                name = "FORCE_LAYOUT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2000
                mask = 0x2000
                name = "LAYOUT_REQUIRED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8000
                mask = 0x8000
                name = "DRAWING_CACHE_INVALID"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "DRAWN"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x20
                mask = 0x20
                name = "NOT_DRAWN"
                outputIf = false
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x400000
                mask = 0x600000
                name = "DIRTY_OPAQUE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x200000
                mask = 0x600000
                name = "DIRTY"
            .end subannotation
        }
    .end annotation
.end field

.field mPrivateFlags2:I

.field mPrivateFlags3:I

.field mRecreateDisplayList:Z

.field private final mResources:Landroid/content/res/Resources;

.field protected mRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mScrollCache:Landroid/view/View$ScrollabilityCache;

.field protected mScrollX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected mScrollY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

.field private mSendingHoverAccessibilityEvents:Z

.field mSystemUiVisibility:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "SYSTEM_UI_FLAG_LOW_PROFILE"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x2
                mask = 0x2
                name = "SYSTEM_UI_FLAG_HIDE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x8
                mask = 0x8
                name = "SYSTEM_UI_FLAG_REMOVE_NAVIGATION"
                outputIf = true
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0xffff
                name = "SYSTEM_UI_FLAG_VISIBLE"
                outputIf = true
            .end subannotation
        }
    .end annotation
.end field

.field protected mTag:Ljava/lang/Object;

.field protected mTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mTouchDelegate:Landroid/view/TouchDelegate;

.field private mTouchSlop:I

.field mTransformationInfo:Landroid/view/View$TransformationInfo;

.field mTransientStateCount:I

.field private mUnscaledDrawingCache:Landroid/graphics/Bitmap;

.field private mUnsetPressedState:Landroid/view/View$UnsetPressedState;

.field protected mUserPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingEnd:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingRelative:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field protected mUserPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field mUserPaddingStart:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mVerticalScrollFactor:F

.field private mVerticalScrollbarPosition:I

.field mViewFlags:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mWindowAttachCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 745
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    sput-object v9, Landroid/view/View;->VISIBILITY_FLAGS:[I

    .line 900
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    sput-object v9, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 1427
    const/16 v9, 0x14

    new-array v9, v9, [I

    fill-array-data v9, :array_2

    sput-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    .line 1441
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x2

    sget-object v10, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v10, v10

    if-eq v9, v10, :cond_0

    .line 1442
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1445
    :cond_0
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    new-array v4, v9, [I

    .line 1446
    .local v4, orderedIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v9, v9

    if-ge v1, v9, :cond_3

    .line 1447
    sget-object v9, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v8, v9, v1

    .line 1448
    .local v8, viewState:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_2

    .line 1449
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    aget v9, v9, v2

    if-ne v9, v8, :cond_1

    .line 1450
    mul-int/lit8 v9, v1, 0x2

    aput v8, v4, v9

    .line 1451
    mul-int/lit8 v9, v1, 0x2

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Landroid/view/View;->VIEW_STATE_IDS:[I

    add-int/lit8 v11, v2, 0x1

    aget v10, v10, v11

    aput v10, v4, v9

    .line 1448
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1446
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1455
    .end local v2           #j:I
    .end local v8           #viewState:I
    :cond_3
    sget-object v9, Landroid/view/View;->VIEW_STATE_IDS:[I

    array-length v9, v9

    div-int/lit8 v0, v9, 0x2

    .line 1456
    .local v0, NUM_BITS:I
    const/4 v9, 0x1

    shl-int/2addr v9, v0

    new-array v9, v9, [[I

    sput-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    .line 1457
    const/4 v1, 0x0

    :goto_2
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 1458
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    .line 1459
    .local v3, numBits:I
    new-array v7, v3, [I

    .line 1460
    .local v7, set:[I
    const/4 v5, 0x0

    .line 1461
    .local v5, pos:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_3
    array-length v9, v4

    if-ge v2, v9, :cond_5

    .line 1462
    add-int/lit8 v9, v2, 0x1

    aget v9, v4, v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    .line 1463
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pos:I
    .local v6, pos:I
    aget v9, v4, v2

    aput v9, v7, v5

    move v5, v6

    .line 1461
    .end local v6           #pos:I
    .restart local v5       #pos:I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 1466
    :cond_5
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aput-object v7, v9, v1

    .line 1457
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1469
    .end local v2           #j:I
    .end local v3           #numBits:I
    .end local v5           #pos:I
    .end local v7           #set:[I
    :cond_6
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->EMPTY_STATE_SET:[I

    .line 1470
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->WINDOW_FOCUSED_STATE_SET:[I

    .line 1471
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_STATE_SET:[I

    .line 1472
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x3

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1474
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x4

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_STATE_SET:[I

    .line 1475
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x5

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1477
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x6

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_STATE_SET:[I

    .line 1479
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/4 v10, 0x7

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1482
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x8

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_STATE_SET:[I

    .line 1483
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x9

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1485
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xa

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_STATE_SET:[I

    .line 1487
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xb

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1490
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xc

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_STATE_SET:[I

    .line 1492
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xd

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1495
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xe

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1498
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0xf

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1502
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x10

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_STATE_SET:[I

    .line 1503
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x11

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1505
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x12

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    .line 1507
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x13

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1510
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x14

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_STATE_SET:[I

    .line 1512
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x15

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1515
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x16

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1518
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x17

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1521
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x18

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_STATE_SET:[I

    .line 1523
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x19

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1526
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1a

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 1529
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1532
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1c

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 1535
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1d

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1538
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1e

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 1541
    sget-object v9, Landroid/view/View;->VIEW_STATE_SETS:[[I

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    sput-object v9, Landroid/view/View;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 1568
    new-instance v9, Ljava/lang/ThreadLocal;

    invoke-direct {v9}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v9, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    .line 1886
    const/4 v9, 0x4

    new-array v9, v9, [I

    fill-array-data v9, :array_3

    sput-object v9, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    .line 1953
    const/4 v9, 0x0

    sput v9, Landroid/view/View;->TEXT_DIRECTION_DEFAULT:I

    .line 1972
    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_4

    sput-object v9, Landroid/view/View;->TEXT_DIRECTION_FLAGS:[I

    .line 2068
    const/4 v9, 0x1

    sput v9, Landroid/view/View;->TEXT_ALIGNMENT_DEFAULT:I

    .line 2087
    const/4 v9, 0x7

    new-array v9, v9, [I

    fill-array-data v9, :array_5

    sput-object v9, Landroid/view/View;->TEXT_ALIGNMENT_FLAGS:[I

    .line 11639
    const/4 v9, 0x0

    sput v9, Landroid/view/View;->mScrollBarPositionPadding:I

    .line 16997
    new-instance v9, Landroid/view/View$4;

    const-string v10, "alpha"

    invoke-direct {v9, v10}, Landroid/view/View$4;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 17013
    new-instance v9, Landroid/view/View$5;

    const-string/jumbo v10, "translationX"

    invoke-direct {v9, v10}, Landroid/view/View$5;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 17029
    new-instance v9, Landroid/view/View$6;

    const-string/jumbo v10, "translationY"

    invoke-direct {v9, v10}, Landroid/view/View$6;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 17045
    new-instance v9, Landroid/view/View$7;

    const-string/jumbo v10, "x"

    invoke-direct {v9, v10}, Landroid/view/View$7;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->X:Landroid/util/Property;

    .line 17061
    new-instance v9, Landroid/view/View$8;

    const-string/jumbo v10, "y"

    invoke-direct {v9, v10}, Landroid/view/View$8;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->Y:Landroid/util/Property;

    .line 17077
    new-instance v9, Landroid/view/View$9;

    const-string/jumbo v10, "rotation"

    invoke-direct {v9, v10}, Landroid/view/View$9;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 17093
    new-instance v9, Landroid/view/View$10;

    const-string/jumbo v10, "rotationX"

    invoke-direct {v9, v10}, Landroid/view/View$10;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    .line 17109
    new-instance v9, Landroid/view/View$11;

    const-string/jumbo v10, "rotationY"

    invoke-direct {v9, v10}, Landroid/view/View$11;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    .line 17125
    new-instance v9, Landroid/view/View$12;

    const-string/jumbo v10, "scaleX"

    invoke-direct {v9, v10}, Landroid/view/View$12;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 17141
    new-instance v9, Landroid/view/View$13;

    const-string/jumbo v10, "scaleY"

    invoke-direct {v9, v10}, Landroid/view/View$13;-><init>(Ljava/lang/String;)V

    sput-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 18306
    const/4 v9, 0x0

    sput v9, Landroid/view/View;->sHoverUIEnableFlag:I

    return-void

    .line 745
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 900
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x10t 0x0t
    .end array-data

    .line 1427
    :array_2
    .array-data 0x4
        0x9dt 0x0t 0x1t 0x1t
        0x1t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x1t 0x1t
        0x2t 0x0t 0x0t 0x0t
        0x9ct 0x0t 0x1t 0x1t
        0x4t 0x0t 0x0t 0x0t
        0x9et 0x0t 0x1t 0x1t
        0x8t 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x1t 0x1t
        0x10t 0x0t 0x0t 0x0t
        0xfet 0x2t 0x1t 0x1t
        0x20t 0x0t 0x0t 0x0t
        0x1bt 0x3t 0x1t 0x1t
        0x40t 0x0t 0x0t 0x0t
        0x67t 0x3t 0x1t 0x1t
        0x80t 0x0t 0x0t 0x0t
        0x68t 0x3t 0x1t 0x1t
        0x0t 0x1t 0x0t 0x0t
        0x69t 0x3t 0x1t 0x1t
        0x0t 0x2t 0x0t 0x0t
    .end array-data

    .line 1886
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 1972
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
    .end array-data

    .line 2087
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x60t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0xa0t 0x0t 0x0t
        0x0t 0xc0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 3846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1584
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1609
    iput-boolean v2, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1618
    iput v0, p0, Landroid/view/View;->mID:I

    .line 1624
    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 1629
    iput v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 2722
    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    .line 3016
    iput v3, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 3020
    iput v3, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 3092
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 3110
    iput v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3116
    iput v0, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3122
    iput v0, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3128
    iput v0, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3134
    iput v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 3137
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 3169
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 3175
    iput v2, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 3190
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3290
    iput v2, p0, Landroid/view/View;->mLayerType:I

    .line 3310
    iput-boolean v2, p0, Landroid/view/View;->mEnablePenGesture:Z

    .line 3311
    iput-boolean v2, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    .line 3312
    iput-boolean v2, p0, Landroid/view/View;->isPenSideButton:Z

    .line 3361
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 11642
    iput-boolean v2, p0, Landroid/view/View;->mNeededToChangedScrollBarPosition:Z

    .line 18285
    iput-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 18287
    iput v2, p0, Landroid/view/View;->mHoverPopupType:I

    .line 18350
    iput-boolean v2, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    .line 3847
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 3848
    return-void

    :cond_0
    move-object v0, v1

    .line 3361
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v0, -0x8000

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 3321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1584
    iput-object v1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 1609
    iput-boolean v2, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 1618
    iput v3, p0, Landroid/view/View;->mID:I

    .line 1624
    iput v3, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 1629
    iput v3, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 2722
    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    .line 3016
    iput v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 3020
    iput v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 3092
    iput-object v1, p0, Landroid/view/View;->mDrawableState:[I

    .line 3110
    iput v3, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 3116
    iput v3, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 3122
    iput v3, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 3128
    iput v3, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 3134
    iput v3, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 3137
    iput-object v1, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 3169
    iput-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 3175
    iput v2, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 3190
    iput-object v1, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 3290
    iput v2, p0, Landroid/view/View;->mLayerType:I

    .line 3310
    iput-boolean v2, p0, Landroid/view/View;->mEnablePenGesture:Z

    .line 3311
    iput-boolean v2, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    .line 3312
    iput-boolean v2, p0, Landroid/view/View;->isPenSideButton:Z

    .line 3361
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 11642
    iput-boolean v2, p0, Landroid/view/View;->mNeededToChangedScrollBarPosition:Z

    .line 18285
    iput-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 18287
    iput v2, p0, Landroid/view/View;->mHoverPopupType:I

    .line 18350
    iput-boolean v2, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    .line 3322
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 3323
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    .line 3324
    const/high16 v0, 0x1800

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 3326
    sget v0, Landroid/view/View;->TEXT_DIRECTION_DEFAULT:I

    shl-int/lit8 v0, v0, 0x6

    or-int/lit8 v0, v0, 0x8

    sget v1, Landroid/view/View;->TEXT_ALIGNMENT_DEFAULT:I

    shl-int/lit8 v1, v1, 0xd

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 3331
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mTouchSlop:I

    .line 3332
    invoke-virtual {p0, v4}, Landroid/view/View;->setOverScrollMode(I)V

    .line 3333
    iput v3, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 3334
    iput v3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 3335
    iput-boolean v2, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 3336
    invoke-direct {p0}, Landroid/view/View;->init()V

    .line 3338
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "disable_pen_gesture"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 3339
    iput-boolean v2, p0, Landroid/view/View;->mEnablePenGesture:Z

    .line 3340
    iput-boolean v4, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    .line 3350
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    .line 3361
    goto :goto_0

    .line 3342
    :cond_2
    iput-boolean v2, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    .line 3343
    iput-boolean v4, p0, Landroid/view/View;->mEnablePenGesture:Z

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 3382
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3387
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 43
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 3408
    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3410
    sget-object v41, Lcom/android/internal/R$styleable;->View:[I

    const/16 v42, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v41

    move/from16 v3, p3

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3413
    .local v6, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    .line 3415
    .local v8, background:Landroid/graphics/drawable/Drawable;
    const/16 v16, -0x1

    .line 3416
    .local v16, leftPadding:I
    const/16 v31, -0x1

    .line 3417
    .local v31, topPadding:I
    const/16 v19, -0x1

    .line 3418
    .local v19, rightPadding:I
    const/4 v9, -0x1

    .line 3419
    .local v9, bottomPadding:I
    const/16 v26, -0x1

    .line 3420
    .local v26, startPadding:I
    const/4 v11, -0x1

    .line 3422
    .local v11, endPadding:I
    const/16 v18, -0x1

    .line 3424
    .local v18, padding:I
    const/16 v37, 0x0

    .line 3425
    .local v37, viewFlagValues:I
    const/16 v36, 0x0

    .line 3427
    .local v36, viewFlagMasks:I
    const/16 v25, 0x0

    .line 3429
    .local v25, setScrollContainer:Z
    const/16 v39, 0x0

    .line 3430
    .local v39, x:I
    const/16 v40, 0x0

    .line 3432
    .local v40, y:I
    const/16 v33, 0x0

    .line 3433
    .local v33, tx:F
    const/16 v34, 0x0

    .line 3434
    .local v34, ty:F
    const/16 v20, 0x0

    .line 3435
    .local v20, rotation:F
    const/16 v21, 0x0

    .line 3436
    .local v21, rotationX:F
    const/16 v22, 0x0

    .line 3437
    .local v22, rotationY:F
    const/high16 v27, 0x3f80

    .line 3438
    .local v27, sx:F
    const/high16 v28, 0x3f80

    .line 3439
    .local v28, sy:F
    const/16 v32, 0x0

    .line 3441
    .local v32, transformSet:Z
    const/16 v23, 0x0

    .line 3443
    .local v23, scrollbarStyle:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mOverScrollMode:I

    move/from16 v17, v0

    .line 3444
    .local v17, overScrollMode:I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 3445
    .local v5, N:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v5, :cond_3

    .line 3446
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 3447
    .local v7, attr:I
    packed-switch v7, :pswitch_data_0

    .line 3445
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3449
    :pswitch_1
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3450
    goto :goto_1

    .line 3452
    :pswitch_2
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 3453
    goto :goto_1

    .line 3455
    :pswitch_3
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 3456
    goto :goto_1

    .line 3458
    :pswitch_4
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    .line 3459
    goto :goto_1

    .line 3461
    :pswitch_5
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 3462
    goto :goto_1

    .line 3464
    :pswitch_6
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 3465
    goto :goto_1

    .line 3467
    :pswitch_7
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    .line 3468
    goto :goto_1

    .line 3470
    :pswitch_8
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 3471
    goto :goto_1

    .line 3473
    :pswitch_9
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v39

    .line 3474
    goto :goto_1

    .line 3476
    :pswitch_a
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v40

    .line 3477
    goto :goto_1

    .line 3479
    :pswitch_b
    const/high16 v41, 0x3f80

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 3482
    :pswitch_c
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1

    .line 3485
    :pswitch_d
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto/16 :goto_1

    .line 3488
    :pswitch_e
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v33, v0

    .line 3489
    const/16 v32, 0x1

    .line 3490
    goto/16 :goto_1

    .line 3492
    :pswitch_f
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v41

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v34, v0

    .line 3493
    const/16 v32, 0x1

    .line 3494
    goto/16 :goto_1

    .line 3496
    :pswitch_10
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v20

    .line 3497
    const/16 v32, 0x1

    .line 3498
    goto/16 :goto_1

    .line 3500
    :pswitch_11
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v21

    .line 3501
    const/16 v32, 0x1

    .line 3502
    goto/16 :goto_1

    .line 3504
    :pswitch_12
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 3505
    const/16 v32, 0x1

    .line 3506
    goto/16 :goto_1

    .line 3508
    :pswitch_13
    const/high16 v41, 0x3f80

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 3509
    const/16 v32, 0x1

    .line 3510
    goto/16 :goto_1

    .line 3512
    :pswitch_14
    const/high16 v41, 0x3f80

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    .line 3513
    const/16 v32, 0x1

    .line 3514
    goto/16 :goto_1

    .line 3516
    :pswitch_15
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mID:I

    goto/16 :goto_1

    .line 3519
    :pswitch_16
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/View;->mTag:Ljava/lang/Object;

    goto/16 :goto_1

    .line 3522
    :pswitch_17
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3523
    or-int/lit8 v37, v37, 0x2

    .line 3524
    or-int/lit8 v36, v36, 0x2

    goto/16 :goto_1

    .line 3528
    :pswitch_18
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3529
    or-int/lit8 v37, v37, 0x1

    .line 3530
    or-int/lit8 v36, v36, 0x1

    goto/16 :goto_1

    .line 3534
    :pswitch_19
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3535
    const v41, 0x40001

    or-int v37, v37, v41

    .line 3536
    const v41, 0x40001

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3540
    :pswitch_1a
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3541
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x4000

    move/from16 v37, v0

    .line 3542
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x4000

    move/from16 v36, v0

    goto/16 :goto_1

    .line 3546
    :pswitch_1b
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3547
    const/high16 v41, 0x20

    or-int v37, v37, v41

    .line 3548
    const/high16 v41, 0x20

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3552
    :pswitch_1c
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-nez v41, :cond_0

    .line 3553
    const/high16 v41, 0x1

    or-int v37, v37, v41

    .line 3554
    const/high16 v41, 0x1

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3558
    :pswitch_1d
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3559
    const/high16 v41, 0x40

    or-int v37, v37, v41

    .line 3560
    const/high16 v41, 0x40

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3564
    :pswitch_1e
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    .line 3565
    .local v38, visibility:I
    if-eqz v38, :cond_0

    .line 3566
    sget-object v41, Landroid/view/View;->VISIBILITY_FLAGS:[I

    aget v41, v41, v38

    or-int v37, v37, v41

    .line 3567
    or-int/lit8 v36, v36, 0xc

    goto/16 :goto_1

    .line 3572
    .end local v38           #visibility:I
    :pswitch_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    and-int/lit8 v41, v41, -0x3d

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3574
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 3575
    .local v15, layoutDirection:I
    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v15, v0, :cond_1

    sget-object v41, Landroid/view/View;->LAYOUT_DIRECTION_FLAGS:[I

    aget v35, v41, v15

    .line 3577
    .local v35, value:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    shl-int/lit8 v42, v35, 0x2

    or-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 3575
    .end local v35           #value:I
    :cond_1
    const/16 v35, 0x2

    goto :goto_2

    .line 3580
    .end local v15           #layoutDirection:I
    :pswitch_20
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 3581
    .local v10, cacheQuality:I
    if-eqz v10, :cond_0

    .line 3582
    sget-object v41, Landroid/view/View;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v41, v41, v10

    or-int v37, v37, v41

    .line 3583
    const/high16 v41, 0x18

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3587
    .end local v10           #cacheQuality:I
    :pswitch_21
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3590
    :pswitch_22
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-nez v41, :cond_0

    .line 3591
    const v41, -0x8000001

    and-int v37, v37, v41

    .line 3592
    const/high16 v41, 0x800

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3596
    :pswitch_23
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-nez v41, :cond_0

    .line 3597
    const v41, -0x10000001

    and-int v37, v37, v41

    .line 3598
    const/high16 v41, 0x1000

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3602
    :pswitch_24
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    .line 3603
    .local v24, scrollbars:I
    if-eqz v24, :cond_0

    .line 3604
    or-int v37, v37, v24

    .line 3605
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x300

    move/from16 v36, v0

    .line 3606
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 3611
    .end local v24           #scrollbars:I
    :pswitch_25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v41

    move-object/from16 v0, v41

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v41, v0

    const/16 v42, 0xe

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_0

    .line 3617
    :pswitch_26
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 3618
    .local v12, fadingEdge:I
    if-eqz v12, :cond_0

    .line 3619
    or-int v37, v37, v12

    .line 3620
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x3000

    move/from16 v36, v0

    .line 3621
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->initializeFadingEdge(Landroid/content/res/TypedArray;)V

    goto/16 :goto_1

    .line 3625
    .end local v12           #fadingEdge:I
    :pswitch_27
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .line 3626
    if-eqz v23, :cond_0

    .line 3627
    const/high16 v41, 0x300

    and-int v41, v41, v23

    or-int v37, v37, v41

    .line 3628
    const/high16 v41, 0x300

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3632
    :pswitch_28
    const/16 v25, 0x1

    .line 3633
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3634
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    goto/16 :goto_1

    .line 3638
    :pswitch_29
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3639
    const/high16 v41, 0x400

    or-int v37, v37, v41

    .line 3640
    const/high16 v41, 0x400

    or-int v36, v36, v41

    goto/16 :goto_1

    .line 3644
    :pswitch_2a
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 3645
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x400

    move/from16 v37, v0

    .line 3646
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0x400

    move/from16 v36, v0

    goto/16 :goto_1

    .line 3650
    :pswitch_2b
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusLeftId:I

    goto/16 :goto_1

    .line 3653
    :pswitch_2c
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusRightId:I

    goto/16 :goto_1

    .line 3656
    :pswitch_2d
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusUpId:I

    goto/16 :goto_1

    .line 3659
    :pswitch_2e
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusDownId:I

    goto/16 :goto_1

    .line 3662
    :pswitch_2f
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mNextFocusForwardId:I

    goto/16 :goto_1

    .line 3665
    :pswitch_30
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinWidth:I

    goto/16 :goto_1

    .line 3668
    :pswitch_31
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mMinHeight:I

    goto/16 :goto_1

    .line 3671
    :pswitch_32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->isRestricted()Z

    move-result v41

    if-eqz v41, :cond_2

    .line 3672
    new-instance v41, Ljava/lang/IllegalStateException;

    const-string v42, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct/range {v41 .. v42}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v41

    .line 3676
    :cond_2
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3677
    .local v13, handlerName:Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 3678
    new-instance v41, Landroid/view/View$1;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Landroid/view/View$1;-><init>(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 3712
    .end local v13           #handlerName:Ljava/lang/String;
    :pswitch_33
    const/16 v41, 0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 3713
    goto/16 :goto_1

    .line 3715
    :pswitch_34
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mVerticalScrollbarPosition:I

    goto/16 :goto_1

    .line 3718
    :pswitch_35
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 3722
    :pswitch_36
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    move/from16 v0, v41

    and-int/lit16 v0, v0, -0x1c1

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3724
    const/16 v41, -0x1

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v30

    .line 3725
    .local v30, textDirection:I
    const/16 v41, -0x1

    move/from16 v0, v30

    move/from16 v1, v41

    if-eq v0, v1, :cond_0

    .line 3726
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    sget-object v42, Landroid/view/View;->TEXT_DIRECTION_FLAGS:[I

    aget v42, v42, v30

    or-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 3731
    .end local v30           #textDirection:I
    :pswitch_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    const v42, -0xe001

    and-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 3733
    sget v41, Landroid/view/View;->TEXT_ALIGNMENT_DEFAULT:I

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v29

    .line 3734
    .local v29, textAlignment:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v41, v0

    sget-object v42, Landroid/view/View;->TEXT_ALIGNMENT_FLAGS:[I

    aget v42, v42, v29

    or-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    goto/16 :goto_1

    .line 3737
    .end local v29           #textAlignment:I
    :pswitch_38
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto/16 :goto_1

    .line 3742
    :pswitch_39
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setHoverPopupType(I)V

    goto/16 :goto_1

    .line 3748
    .end local v7           #attr:I
    :cond_3
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 3750
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 3752
    if-eqz v8, :cond_4

    .line 3753
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3758
    :cond_4
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mUserPaddingStart:I

    .line 3759
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/View;->mUserPaddingEnd:I

    .line 3761
    invoke-direct/range {p0 .. p0}, Landroid/view/View;->updateUserPaddingRelative()V

    .line 3763
    if-ltz v18, :cond_5

    .line 3764
    move/from16 v16, v18

    .line 3765
    move/from16 v31, v18

    .line 3766
    move/from16 v19, v18

    .line 3767
    move/from16 v9, v18

    .line 3774
    :cond_5
    if-ltz v16, :cond_c

    .end local v16           #leftPadding:I
    :goto_3
    if-ltz v31, :cond_d

    .end local v31           #topPadding:I
    :goto_4
    if-ltz v19, :cond_e

    .end local v19           #rightPadding:I
    :goto_5
    if-ltz v9, :cond_f

    .end local v9           #bottomPadding:I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v31

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 3779
    if-eqz v36, :cond_6

    .line 3780
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setFlags(II)V

    .line 3784
    :cond_6
    if-eqz v23, :cond_7

    .line 3785
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->recomputePadding()V

    .line 3788
    :cond_7
    if-nez v39, :cond_8

    if-eqz v40, :cond_9

    .line 3789
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 3792
    :cond_9
    if-eqz v32, :cond_a

    .line 3793
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3794
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3795
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 3796
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 3797
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 3798
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3799
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3802
    :cond_a
    if-nez v25, :cond_b

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x200

    move/from16 v41, v0

    if-eqz v41, :cond_b

    .line 3803
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollContainer(Z)V

    .line 3806
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 3811
    return-void

    .line 3774
    .restart local v9       #bottomPadding:I
    .restart local v16       #leftPadding:I
    .restart local v19       #rightPadding:I
    .restart local v31       #topPadding:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v16, v0

    goto :goto_3

    .end local v16           #leftPadding:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v31, v0

    goto/16 :goto_4

    .end local v31           #topPadding:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v19, v0

    goto/16 :goto_5

    .end local v19           #rightPadding:I
    :cond_f
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mPaddingBottom:I

    goto/16 :goto_6

    .line 3447
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_27
        :pswitch_15
        :pswitch_16
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_18
        :pswitch_19
        :pswitch_1e
        :pswitch_17
        :pswitch_24
        :pswitch_25
        :pswitch_0
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_20
        :pswitch_1d
        :pswitch_30
        :pswitch_31
        :pswitch_22
        :pswitch_29
        :pswitch_28
        :pswitch_23
        :pswitch_32
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_33
        :pswitch_2a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_14
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_34
        :pswitch_2f
        :pswitch_35
        :pswitch_26
        :pswitch_38
        :pswitch_39
        :pswitch_7
        :pswitch_8
        :pswitch_1f
        :pswitch_36
        :pswitch_37
    .end packed-switch
.end method

.method static synthetic access$2002(Landroid/view/View;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    iput-boolean p1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    invoke-direct {p0, p1}, Landroid/view/View;->checkForLongClick(I)V

    return-void
.end method

.method private canTakeAccessibilityFocusFromHover()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6512
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isActionableForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6518
    :cond_0
    :goto_0
    return v0

    .line 6515
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_2

    .line 6516
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p0}, Landroid/view/ViewParent;->findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eq v2, p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 6518
    goto :goto_0
.end method

.method private checkForLongClick(I)V
    .locals 3
    .parameter "delayOffset"

    .prologue
    const/high16 v1, 0x20

    .line 16427
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 16428
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 16430
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-nez v0, :cond_0

    .line 16431
    new-instance v0, Landroid/view/View$CheckForLongPress;

    invoke-direct {v0, p0}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    .line 16433
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {v0}, Landroid/view/View$CheckForLongPress;->rememberWindowAttachCount()V

    .line 16434
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16437
    :cond_1
    return-void
.end method

.method private clearDisplayList()V
    .locals 1

    .prologue
    .line 12776
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 12777
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->invalidate()V

    .line 12778
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0}, Landroid/view/DisplayList;->clear()V

    .line 12780
    :cond_0
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .parameter "curState"
    .parameter "newState"

    .prologue
    .line 15600
    or-int v0, p0, p1

    return v0
.end method

.method protected static debugIndent(I)Ljava/lang/String;
    .locals 4
    .parameter "depth"

    .prologue
    const/16 v3, 0x20

    .line 15427
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 15428
    .local v1, spaces:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_0

    .line 15429
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15431
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7439
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7440
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7453
    :cond_0
    :goto_0
    return v1

    .line 7446
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7450
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_2

    .line 7451
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_2
    move v1, v2

    .line 7453
    goto :goto_0
.end method

.method private drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z
    .locals 15
    .parameter "parent"
    .parameter "drawingTime"
    .parameter "a"
    .parameter "scalingRequired"

    .prologue
    .line 13266
    move-object/from16 v0, p1

    iget v10, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13267
    .local v10, flags:I
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v11

    .line 13268
    .local v11, initialized:Z
    if-nez v11, :cond_1

    .line 13269
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 13270
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 13271
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setListenerHandler(Landroid/os/Handler;)V

    .line 13272
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onAnimationStart()V

    .line 13275
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    const/high16 v4, 0x3f80

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v13

    .line 13276
    .local v13, more:Z
    if-eqz p5, :cond_4

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 13277
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    if-nez v3, :cond_2

    .line 13278
    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 13280
    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 13281
    .local v9, invalidationTransform:Landroid/view/animation/Transformation;
    const/high16 v3, 0x3f80

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    .line 13286
    :goto_0
    if-eqz v13, :cond_3

    .line 13287
    invoke-virtual/range {p4 .. p4}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13288
    and-int/lit16 v3, v10, 0x90

    const/16 v4, 0x80

    if-ne v3, v4, :cond_5

    .line 13290
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13315
    :cond_3
    :goto_1
    return v13

    .line 13283
    .end local v9           #invalidationTransform:Landroid/view/animation/Transformation;
    :cond_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .restart local v9       #invalidationTransform:Landroid/view/animation/Transformation;
    goto :goto_0

    .line 13291
    :cond_5
    and-int/lit8 v3, v10, 0x4

    if-nez v3, :cond_3

    .line 13294
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 13295
    iget v3, p0, Landroid/view/View;->mLeft:I

    iget v4, p0, Landroid/view/View;->mTop:I

    iget v5, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_1

    .line 13298
    :cond_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    if-nez v3, :cond_7

    .line 13299
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 13301
    :cond_7
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 13302
    .local v8, region:Landroid/graphics/RectF;
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v3, v6

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v7, v3, v7

    move-object/from16 v3, p4

    invoke-virtual/range {v3 .. v9}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 13307
    move-object/from16 v0, p1

    iget v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x40

    move-object/from16 v0, p1

    iput v3, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 13309
    iget v3, p0, Landroid/view/View;->mLeft:I

    iget v4, v8, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    add-int v12, v3, v4

    .line 13310
    .local v12, left:I
    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, v8, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    add-int v14, v3, v4

    .line 13311
    .local v14, top:I
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v12

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_1
.end method

.method private findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "root"
    .parameter "childViewId"

    .prologue
    .line 6269
    new-instance v1, Landroid/view/View$3;

    invoke-direct {v1, p0, p2}, Landroid/view/View$3;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v0

    .line 6276
    .local v0, result:Landroid/view/View;
    if-nez v0, :cond_0

    .line 6277
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find next focus view specified by user for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6280
    :cond_0
    return-object v0
.end method

.method private getBoundsOnScreen(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "outRect"

    .prologue
    const/4 v7, 0x0

    const/high16 v8, 0x3f00

    .line 4931
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_0

    .line 4968
    :goto_0
    return-void

    .line 4935
    :cond_0
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4936
    .local v2, position:Landroid/graphics/RectF;
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4938
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4939
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4942
    :cond_1
    iget v4, p0, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4944
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4945
    .local v0, parent:Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v0, Landroid/view/View;

    if-eqz v4, :cond_3

    move-object v1, v0

    .line 4946
    check-cast v1, Landroid/view/View;

    .line 4948
    .local v1, parentView:Landroid/view/View;
    iget v4, v1, Landroid/view/View;->mScrollX:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v1, Landroid/view/View;->mScrollY:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4950
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4951
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4954
    :cond_2
    iget v4, v1, Landroid/view/View;->mLeft:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4956
    iget-object v0, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4957
    goto :goto_1

    .line 4959
    .end local v1           #parentView:Landroid/view/View;
    :cond_3
    instance-of v4, v0, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_4

    move-object v3, v0

    .line 4960
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 4961
    .local v3, viewRootImpl:Landroid/view/ViewRootImpl;
    iget v4, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v7, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 4964
    .end local v3           #viewRootImpl:Landroid/view/ViewRootImpl;
    :cond_4
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 4966
    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v8

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v8

    float-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method public static getDefaultSize(II)I
    .locals 3
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 15656
    move v0, p0

    .line 15657
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 15658
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 15660
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 15669
    :goto_0
    return v0

    .line 15662
    :sswitch_0
    move v0, p0

    .line 15663
    goto :goto_0

    .line 15666
    :sswitch_1
    move v0, v2

    goto :goto_0

    .line 15660
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;
    .locals 14
    .parameter "displayList"
    .parameter "isLayer"

    .prologue
    .line 12650
    invoke-virtual {p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 12651
    const/4 v1, 0x0

    .line 12746
    :goto_0
    return-object v1

    .line 12654
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/DisplayList;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_10

    iget-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-eqz v1, :cond_10

    .line 12659
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/DisplayList;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    iget-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    if-nez v1, :cond_2

    .line 12661
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12662
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12663
    invoke-virtual {p0}, Landroid/view/View;->dispatchGetDisplayList()V

    move-object v1, p1

    .line 12665
    goto :goto_0

    .line 12668
    :cond_2
    if-nez p2, :cond_3

    .line 12671
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 12673
    :cond_3
    if-nez p1, :cond_4

    .line 12674
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    .line 12675
    .local v12, name:Ljava/lang/String;
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1, v12}, Landroid/view/HardwareRenderer;->createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;

    move-result-object p1

    .line 12679
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12682
    .end local v12           #name:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    .line 12683
    .local v8, caching:Z
    invoke-virtual {p1}, Landroid/view/DisplayList;->start()Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 12684
    .local v0, canvas:Landroid/view/HardwareCanvas;
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int v13, v1, v2

    .line 12685
    .local v13, width:I
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int v9, v1, v2

    .line 12688
    .local v9, height:I
    :try_start_0
    invoke-virtual {v0, v13, v9}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 12690
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    .line 12691
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v1, Landroid/view/ViewGroup;

    iget-boolean v1, v1, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eqz v1, :cond_8

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v11

    .line 12694
    .local v11, layerType:I
    :goto_1
    if-nez p2, :cond_b

    if-eqz v11, :cond_b

    .line 12695
    const/4 v1, 0x2

    if-ne v11, v1, :cond_a

    .line 12696
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v10

    .line 12697
    .local v10, layer:Landroid/view/HardwareLayer;
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 12698
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12704
    :goto_2
    const/4 v8, 0x1

    .line 12731
    .end local v10           #layer:Landroid/view/HardwareLayer;
    :cond_6
    :goto_3
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 12733
    invoke-virtual {p1}, Landroid/view/DisplayList;->end()V

    .line 12734
    invoke-virtual {p1, v8}, Landroid/view/DisplayList;->setCaching(Z)V

    .line 12735
    if-eqz p2, :cond_e

    .line 12736
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v13, v9}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    .end local v8           #caching:Z
    .end local v9           #height:I
    .end local v11           #layerType:I
    .end local v13           #width:I
    :cond_7
    :goto_4
    move-object v1, p1

    .line 12746
    goto/16 :goto_0

    .line 12691
    .restart local v0       #canvas:Landroid/view/HardwareCanvas;
    .restart local v8       #caching:Z
    .restart local v9       #height:I
    .restart local v13       #width:I
    :cond_8
    const/4 v11, 0x0

    goto :goto_1

    .line 12700
    .restart local v10       #layer:Landroid/view/HardwareLayer;
    .restart local v11       #layerType:I
    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/16 v6, 0x14

    invoke-virtual/range {v0 .. v6}, Landroid/view/HardwareCanvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 12731
    .end local v10           #layer:Landroid/view/HardwareLayer;
    .end local v11           #layerType:I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 12733
    invoke-virtual {p1}, Landroid/view/DisplayList;->end()V

    .line 12734
    invoke-virtual {p1, v8}, Landroid/view/DisplayList;->setCaching(Z)V

    .line 12735
    if-eqz p2, :cond_f

    .line 12736
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v13, v9}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 12738
    :goto_5
    throw v1

    .line 12706
    .restart local v11       #layerType:I
    :cond_a
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 12707
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 12708
    .local v7, cache:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_6

    .line 12709
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 12710
    const/4 v8, 0x1

    goto :goto_3

    .line 12715
    .end local v7           #cache:Landroid/graphics/Bitmap;
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 12717
    iget v1, p0, Landroid/view/View;->mScrollX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 12718
    if-nez p2, :cond_c

    .line 12719
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12720
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12724
    :cond_c
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_d

    .line 12725
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 12727
    :cond_d
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 12738
    :cond_e
    invoke-virtual {p0, p1}, Landroid/view/View;->setDisplayListProperties(Landroid/view/DisplayList;)V

    goto :goto_4

    .end local v11           #layerType:I
    :cond_f
    invoke-virtual {p0, p1}, Landroid/view/View;->setDisplayListProperties(Landroid/view/DisplayList;)V

    goto :goto_5

    .line 12741
    .end local v0           #canvas:Landroid/view/HardwareCanvas;
    .end local v8           #caching:Z
    .end local v9           #height:I
    .end local v13           #width:I
    :cond_10
    if-nez p2, :cond_7

    .line 12742
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x8020

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12743
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x600001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_4
.end method

.method private getHardwareLayerDisplayList(Landroid/view/HardwareLayer;)Landroid/view/DisplayList;
    .locals 3
    .parameter "layer"

    .prologue
    .line 12756
    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/view/View;->getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;

    move-result-object v0

    .line 12757
    .local v0, displayList:Landroid/view/DisplayList;
    invoke-virtual {p1, v0}, Landroid/view/HardwareLayer;->setDisplayList(Landroid/view/DisplayList;)V

    .line 12758
    return-object v0
.end method

.method private getScrollCache()Landroid/view/View$ScrollabilityCache;
    .locals 1

    .prologue
    .line 4048
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 4049
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    return-object v0
.end method

.method private hasAncestorThatBlocksDescendantFocus()Z
    .locals 4

    .prologue
    .line 6655
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6656
    .local v0, ancestor:Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 6657
    check-cast v1, Landroid/view/ViewGroup;

    .line 6658
    .local v1, vgAncestor:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 6659
    const/4 v2, 0x1

    .line 6664
    .end local v1           #vgAncestor:Landroid/view/ViewGroup;
    :goto_1
    return v2

    .line 6661
    .restart local v1       #vgAncestor:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6663
    goto :goto_0

    .line 6664
    .end local v1           #vgAncestor:Landroid/view/ViewGroup;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private hasListenersForAccessibility()Z
    .locals 2

    .prologue
    .line 6875
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 6876
    .local v0, info:Landroid/view/View$ListenerInfo;
    iget-object v1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$400(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;

    move-result-object v1

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasRtlSupport()Z
    .locals 1

    .prologue
    .line 11789
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method public static inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter "root"

    .prologue
    .line 16450
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 16451
    .local v0, factory:Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 3814
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mListViewItemTag:Ljava/lang/Object;

    .line 3815
    return-void
.end method

.method private initScrollCache()V
    .locals 2

    .prologue
    .line 4042
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    .line 4043
    new-instance v0, Landroid/view/View$ScrollabilityCache;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/View$ScrollabilityCache;-><init>(Landroid/view/ViewConfiguration;Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 4045
    :cond_0
    return-void
.end method

.method private initialAwakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10268
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private internalSetPadding(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v6, 0x100

    const/4 v3, 0x0

    .line 14652
    iput p1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 14653
    iput p3, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 14654
    iput p4, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 14656
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    .line 14657
    .local v2, viewFlags:I
    const/4 v0, 0x0

    .line 14660
    .local v0, changed:Z
    and-int/lit16 v4, v2, 0x300

    if-eqz v4, :cond_1

    .line 14661
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_0

    .line 14662
    and-int v4, v2, v6

    if-nez v4, :cond_7

    move v1, v3

    .line 14664
    .local v1, offset:I
    :goto_0
    iget v4, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v4, :pswitch_data_0

    .line 14680
    .end local v1           #offset:I
    :cond_0
    :goto_1
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_1

    .line 14681
    and-int v4, v2, v6

    if-nez v4, :cond_9

    :goto_2
    add-int/2addr p4, v3

    .line 14686
    :cond_1
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-eq v3, p1, :cond_2

    .line 14687
    const/4 v0, 0x1

    .line 14688
    iput p1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 14690
    :cond_2
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-eq v3, p2, :cond_3

    .line 14691
    const/4 v0, 0x1

    .line 14692
    iput p2, p0, Landroid/view/View;->mPaddingTop:I

    .line 14694
    :cond_3
    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-eq v3, p3, :cond_4

    .line 14695
    const/4 v0, 0x1

    .line 14696
    iput p3, p0, Landroid/view/View;->mPaddingRight:I

    .line 14698
    :cond_4
    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq v3, p4, :cond_5

    .line 14699
    const/4 v0, 0x1

    .line 14700
    iput p4, p0, Landroid/view/View;->mPaddingBottom:I

    .line 14703
    :cond_5
    if-eqz v0, :cond_6

    .line 14704
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14706
    :cond_6
    return-void

    .line 14662
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v1

    goto :goto_0

    .line 14666
    .restart local v1       #offset:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 14667
    add-int/2addr p1, v1

    goto :goto_1

    .line 14669
    :cond_8
    add-int/2addr p3, v1

    .line 14671
    goto :goto_1

    .line 14673
    :pswitch_1
    add-int/2addr p3, v1

    .line 14674
    goto :goto_1

    .line 14676
    :pswitch_2
    add-int/2addr p1, v1

    goto :goto_1

    .line 14681
    .end local v1           #offset:I
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollbarHeight()I

    move-result v3

    goto :goto_2

    .line 14664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isHoverable()Z
    .locals 5

    .prologue
    const/high16 v4, 0x20

    const/4 v1, 0x0

    .line 8253
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 8254
    .local v0, viewFlags:I
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 8258
    :cond_0
    :goto_0
    return v1

    :cond_1
    and-int/lit16 v2, v0, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    and-int v2, v0, v4

    if-ne v2, v4, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected static isLayoutDirectionRtl(Ljava/util/Locale;)Z
    .locals 2
    .parameter "locale"

    .prologue
    const/4 v0, 0x1

    .line 11961
    invoke-static {p0}, Landroid/util/LocaleUtil;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static mergeDrawableStates([I[I)[I
    .locals 5
    .parameter "baseState"
    .parameter "additionalState"

    .prologue
    .line 14450
    array-length v0, p0

    .line 14451
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .line 14452
    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    aget v2, p0, v1

    if-nez v2, :cond_0

    .line 14453
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 14455
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x1

    array-length v4, p1

    invoke-static {p1, v2, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14456
    return-object p0
.end method

.method private nextAtGranularity(I)Z
    .locals 9
    .parameter "granularity"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7015
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v5

    .line 7016
    .local v5, text:Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 7034
    :cond_0
    :goto_0
    return v6

    .line 7019
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    .line 7020
    .local v2, iterator:Landroid/view/AccessibilityIterators$TextSegmentIterator;
    if-eqz v2, :cond_0

    .line 7023
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityCursorPosition()I

    move-result v0

    .line 7024
    .local v0, current:I
    invoke-interface {v2, v0}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->following(I)[I

    move-result-object v3

    .line 7025
    .local v3, range:[I
    if-eqz v3, :cond_0

    .line 7028
    aget v4, v3, v6

    .line 7029
    .local v4, start:I
    aget v1, v3, v7

    .line 7030
    .local v1, end:I
    invoke-virtual {p0, v1}, Landroid/view/View;->setAccessibilityCursorPosition(I)V

    .line 7031
    const/16 v6, 0x100

    invoke-direct {p0, v6, p1, v4, v1}, Landroid/view/View;->sendViewTextTraversedAtGranularityEvent(IIII)V

    move v6, v7

    .line 7034
    goto :goto_0
.end method

.method private static nonzero(F)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 8955
    const v0, -0x457ced91

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const v0, 0x3a83126f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pointInView(FFF)Z
    .locals 2
    .parameter "localX"
    .parameter "localY"
    .parameter "slop"

    .prologue
    .line 9995
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postSendViewScrolledAccessibilityEventCallback()V
    .locals 3

    .prologue
    .line 10985
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-nez v0, :cond_0

    .line 10986
    new-instance v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/View$SendViewScrolledAccessibilityEvent;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    .line 10988
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_1

    .line 10989
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 10990
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10993
    :cond_1
    return-void
.end method

.method private previousAtGranularity(I)Z
    .locals 9
    .parameter "granularity"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7038
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v5

    .line 7039
    .local v5, text:Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 7069
    :cond_0
    :goto_0
    return v6

    .line 7042
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    .line 7043
    .local v2, iterator:Landroid/view/AccessibilityIterators$TextSegmentIterator;
    if-eqz v2, :cond_0

    .line 7046
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityCursorPosition()I

    move-result v0

    .line 7047
    .local v0, current:I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_3

    .line 7048
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 7054
    :cond_2
    :goto_1
    invoke-interface {v2, v0}, Landroid/view/AccessibilityIterators$TextSegmentIterator;->preceding(I)[I

    move-result-object v3

    .line 7055
    .local v3, range:[I
    if-eqz v3, :cond_0

    .line 7058
    aget v4, v3, v6

    .line 7059
    .local v4, start:I
    aget v1, v3, v7

    .line 7061
    .local v1, end:I
    if-ne p1, v7, :cond_4

    .line 7062
    invoke-virtual {p0, v1}, Landroid/view/View;->setAccessibilityCursorPosition(I)V

    .line 7066
    :goto_2
    const/16 v6, 0x200

    invoke-direct {p0, v6, p1, v4, v1}, Landroid/view/View;->sendViewTextTraversedAtGranularityEvent(IIII)V

    move v6, v7

    .line 7069
    goto :goto_0

    .line 7049
    .end local v1           #end:I
    .end local v3           #range:[I
    .end local v4           #start:I
    :cond_3
    if-ne p1, v7, :cond_2

    .line 7052
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 7064
    .restart local v1       #end:I
    .restart local v3       #range:[I
    .restart local v4       #start:I
    :cond_4
    invoke-virtual {p0, v4}, Landroid/view/View;->setAccessibilityCursorPosition(I)V

    goto :goto_2
.end method

.method private static printFlags(I)Ljava/lang/String;
    .locals 4
    .parameter "flags"

    .prologue
    .line 13948
    const-string v1, ""

    .line 13949
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 13950
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 13951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAKES_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13952
    add-int/lit8 v0, v0, 0x1

    .line 13955
    :cond_0
    and-int/lit8 v2, p0, 0xc

    sparse-switch v2, :sswitch_data_0

    .line 13973
    :goto_0
    return-object v1

    .line 13957
    :sswitch_0
    if-lez v0, :cond_1

    .line 13958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13960
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "INVISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13962
    goto :goto_0

    .line 13964
    :sswitch_1
    if-lez v0, :cond_2

    .line 13965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13967
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13969
    goto :goto_0

    .line 13955
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private static printPrivateFlags(I)Ljava/lang/String;
    .locals 4
    .parameter "privateFlags"

    .prologue
    .line 13984
    const-string v1, ""

    .line 13985
    .local v1, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 13987
    .local v0, numFlags:I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 13988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WANTS_FOCUS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13989
    add-int/lit8 v0, v0, 0x1

    .line 13992
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 13993
    if-lez v0, :cond_1

    .line 13994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13996
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13997
    add-int/lit8 v0, v0, 0x1

    .line 14000
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 14001
    if-lez v0, :cond_3

    .line 14002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14004
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14005
    add-int/lit8 v0, v0, 0x1

    .line 14008
    :cond_4
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    .line 14009
    if-lez v0, :cond_5

    .line 14010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14012
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "IS_ROOT_NAMESPACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14013
    add-int/lit8 v0, v0, 0x1

    .line 14016
    :cond_6
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_8

    .line 14017
    if-lez v0, :cond_7

    .line 14018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14020
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HAS_BOUNDS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14021
    add-int/lit8 v0, v0, 0x1

    .line 14024
    :cond_8
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_a

    .line 14025
    if-lez v0, :cond_9

    .line 14026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14028
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DRAWN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14031
    :cond_a
    return-object v1
.end method

.method private removeLongPressCallback()V
    .locals 1

    .prologue
    .line 8471
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 8472
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForLongPress:Landroid/view/View$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8474
    :cond_0
    return-void
.end method

.method private removePerformClickCallback()V
    .locals 1

    .prologue
    .line 8480
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-eqz v0, :cond_0

    .line 8481
    iget-object v0, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8483
    :cond_0
    return-void
.end method

.method private removeSendViewScrolledAccessibilityEventCallback()V
    .locals 2

    .prologue
    .line 8527
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 8528
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8529
    iget-object v0, p0, Landroid/view/View;->mSendViewScrolledAccessibilityEvent:Landroid/view/View$SendViewScrolledAccessibilityEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$SendViewScrolledAccessibilityEvent;->mIsPending:Z

    .line 8531
    :cond_0
    return-void
.end method

.method private removeTapCallback()V
    .locals 2

    .prologue
    .line 8499
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-eqz v0, :cond_0

    .line 8500
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x2000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8501
    iget-object v0, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8503
    :cond_0
    return-void
.end method

.method private removeUnsetPressCallback()V
    .locals 1

    .prologue
    .line 8489
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-eqz v0, :cond_0

    .line 8490
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 8491
    iget-object v0, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8493
    :cond_0
    return-void
.end method

.method private requestAccessibilityFocusFromHover()V
    .locals 2

    .prologue
    .line 6499
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isActionableForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6500
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 6509
    :cond_0
    :goto_0
    return-void

    .line 6502
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_0

    .line 6503
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p0}, Landroid/view/ViewParent;->findViewToTakeAccessibilityFocusFromHover(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 6504
    .local v0, nextFocus:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6505
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_0
.end method

.method private requestFocusNoSearch(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/high16 v3, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 6610
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_1

    .line 6627
    :cond_0
    :goto_0
    return v0

    .line 6616
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v3

    if-ne v3, v2, :cond_0

    .line 6622
    :cond_2
    invoke-direct {p0}, Landroid/view/View;->hasAncestorThatBlocksDescendantFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6626
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    move v0, v1

    .line 6627
    goto :goto_0
.end method

.method private resetPressedState()V
    .locals 2

    .prologue
    .line 5237
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 5248
    :cond_0
    :goto_0
    return-void

    .line 5241
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5244
    iget-boolean v0, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v0, :cond_0

    .line 5245
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    goto :goto_0
.end method

.method public static resolveSize(II)I
    .locals 2
    .parameter "size"
    .parameter "measureSpec"

    .prologue
    .line 15608
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .parameter "size"
    .parameter "measureSpec"
    .parameter "childMeasuredState"

    .prologue
    .line 15625
    move v0, p0

    .line 15626
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 15627
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 15628
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 15643
    :goto_0
    const/high16 v3, -0x100

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 15630
    :sswitch_0
    move v0, p0

    .line 15631
    goto :goto_0

    .line 15633
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 15634
    const/high16 v3, 0x100

    or-int v0, v2, v3

    goto :goto_0

    .line 15636
    :cond_0
    move v0, p0

    .line 15638
    goto :goto_0

    .line 15640
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 15628
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private sendAccessibilityHoverEvent(I)V
    .locals 3
    .parameter "eventType"

    .prologue
    .line 6483
    move-object v1, p0

    .line 6485
    .local v1, source:Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->includeForAccessibility()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6486
    invoke-virtual {v1, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6493
    :cond_0
    return-void

    .line 6489
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 6490
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 6491
    check-cast v1, Landroid/view/View;

    goto :goto_0
.end method

.method private sendViewTextTraversedAtGranularityEvent(IIII)V
    .locals 2
    .parameter "action"
    .parameter "granularity"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 7099
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v1, :cond_0

    .line 7111
    :goto_0
    return-void

    .line 7102
    :cond_0
    const/high16 v1, 0x2

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7104
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7105
    invoke-virtual {p0, v0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7106
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7107
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 7108
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 7109
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 7110
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method private setKeyedTag(ILjava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 15333
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 15334
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    .line 15337
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15338
    return-void
.end method

.method private skipInvalidate()Z
    .locals 1

    .prologue
    .line 10397
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->isViewTransitioning(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMatrix()V
    .locals 6

    .prologue
    const/high16 v3, 0x4000

    .line 8982
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8983
    .local v0, info:Landroid/view/View$TransformationInfo;
    if-nez v0, :cond_1

    .line 9023
    :cond_0
    :goto_0
    return-void

    .line 8986
    :cond_1
    iget-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    if-eqz v1, :cond_0

    .line 8991
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    .line 8992
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    #getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1300(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    #getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1400(Landroid/view/View$TransformationInfo;)I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 8993
    :cond_2
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    #setter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1302(Landroid/view/View$TransformationInfo;I)I

    .line 8994
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    #setter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1402(Landroid/view/View$TransformationInfo;I)I

    .line 8995
    #getter for: Landroid/view/View$TransformationInfo;->mPrevWidth:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1300(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 8996
    #getter for: Landroid/view/View$TransformationInfo;->mPrevHeight:I
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1400(Landroid/view/View$TransformationInfo;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 8999
    :cond_3
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 9000
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    invoke-static {v1}, Landroid/view/View;->nonzero(F)Z

    move-result v1

    if-nez v1, :cond_4

    .line 9001
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 9002
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 9003
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 9019
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9020
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    #setter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1202(Landroid/view/View$TransformationInfo;Z)Z

    .line 9021
    const/4 v1, 0x1

    #setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;Z)Z

    goto/16 :goto_0

    .line 9005
    :cond_4
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    if-nez v1, :cond_5

    .line 9006
    new-instance v1, Landroid/graphics/Camera;

    invoke-direct {v1}, Landroid/graphics/Camera;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 9007
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9009
    :cond_5
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    .line 9010
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 9011
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    neg-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 9012
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 9013
    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 9014
    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    iget v4, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9016
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    #getter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1600(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 9017
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    goto/16 :goto_1
.end method

.method private updateUserPaddingRelative()V
    .locals 1

    .prologue
    .line 3840
    iget v0, p0, Landroid/view/View;->mUserPaddingStart:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 3841
    return-void

    .line 3840
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6830
    .local p1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6831
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6833
    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 6305
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 6306
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 6325
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 6342
    :cond_0
    :goto_0
    return-void

    .line 6328
    :cond_1
    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 6329
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6330
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6334
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6337
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6341
    :cond_3
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 4132
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 4133
    .local v0, li:Landroid/view/View$ListenerInfo;
    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4134
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #setter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$102(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4137
    :cond_0
    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4138
    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 4099
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    .line 4100
    .local v0, li:Landroid/view/View$ListenerInfo;
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Landroid/view/View$ListenerInfo;->access$002(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 4103
    :cond_0
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4104
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4106
    :cond_1
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/high16 v3, 0x20

    .line 6394
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 6396
    .local v0, viewFlags:I
    and-int/lit16 v1, v0, 0x4000

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_0

    and-int v1, v0, v3

    if-ne v1, v3, :cond_1

    :cond_0
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_1

    .line 6398
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6400
    :cond_1
    return-void
.end method

.method public animate()Landroid/view/ViewPropertyAnimator;
    .locals 1

    .prologue
    .line 17314
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    .line 17315
    new-instance v0, Landroid/view/ViewPropertyAnimator;

    invoke-direct {v0, p0}, Landroid/view/ViewPropertyAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    .line 17317
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mAnimator:Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 4653
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4654
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 4656
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4657
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4659
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method public applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V
    .locals 15
    .parameter "dr"
    .parameter "region"

    .prologue
    .line 16395
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    .line 16396
    .local v1, r:Landroid/graphics/Region;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 16397
    .local v13, db:Landroid/graphics/Rect;
    iget-object v12, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 16398
    .local v12, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_4

    if-eqz v12, :cond_4

    .line 16399
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v9, v2, v3

    .line 16400
    .local v9, w:I
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v2, v3

    .line 16401
    .local v5, h:I
    iget v2, v13, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_0

    .line 16403
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 16405
    :cond_0
    iget v2, v13, Landroid/graphics/Rect;->right:I

    if-ge v2, v9, :cond_1

    .line 16407
    iget v2, v13, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 16409
    :cond_1
    iget v2, v13, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_2

    .line 16411
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v10, v13, Landroid/graphics/Rect;->top:I

    sget-object v11, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 16413
    :cond_2
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v5, :cond_3

    .line 16415
    const/4 v2, 0x0

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move v4, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 16417
    :cond_3
    iget-object v14, v12, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 16418
    .local v14, location:[I
    invoke-virtual {p0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 16419
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x1

    aget v3, v14, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 16420
    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 16424
    .end local v5           #h:I
    .end local v9           #w:I
    .end local v14           #location:[I
    :goto_0
    return-void

    .line 16422
    :cond_4
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method assignParent(Landroid/view/ViewParent;)V
    .locals 3
    .parameter "parent"

    .prologue
    .line 11717
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v0, :cond_0

    .line 11718
    iput-object p1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 11725
    :goto_0
    return-void

    .line 11719
    :cond_0
    if-nez p1, :cond_1

    .line 11720
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_0

    .line 11722
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " being added, but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " it already has a parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected awakenScrollBars()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10255
    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v1, v1, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected awakenScrollBars(I)Z
    .locals 1
    .parameter "startDelay"

    .prologue
    .line 10307
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected awakenScrollBars(IZ)Z
    .locals 10
    .parameter "startDelay"
    .parameter "invalidate"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10349
    iget-object v3, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 10351
    .local v3, scrollCache:Landroid/view/View$ScrollabilityCache;
    if-eqz v3, :cond_0

    iget-boolean v6, v3, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-nez v6, :cond_1

    .line 10389
    :cond_0
    :goto_0
    return v4

    .line 10355
    :cond_1
    iget-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v6, :cond_2

    .line 10356
    new-instance v6, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v6}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v6, v3, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 10359
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 10361
    :cond_3
    if-eqz p2, :cond_4

    .line 10363
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 10366
    :cond_4
    iget v4, v3, Landroid/view/View$ScrollabilityCache;->state:I

    if-nez v4, :cond_5

    .line 10370
    const/16 v0, 0x2ee

    .line 10371
    .local v0, KEY_REPEAT_FIRST_DELAY:I
    const/16 v4, 0x2ee

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 10376
    .end local v0           #KEY_REPEAT_FIRST_DELAY:I
    :cond_5
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v1, v6, v8

    .line 10377
    .local v1, fadeStartTime:J
    iput-wide v1, v3, Landroid/view/View$ScrollabilityCache;->fadeStartTime:J

    .line 10378
    iput v5, v3, Landroid/view/View$ScrollabilityCache;->state:I

    .line 10381
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_6

    .line 10382
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10383
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_6
    move v4, v5

    .line 10386
    goto :goto_0
.end method

.method public bringToFront()V
    .locals 1

    .prologue
    .line 8707
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 8708
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 8710
    :cond_0
    return-void
.end method

.method public buildDrawingCache()V
    .locals 1

    .prologue
    .line 12884
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 12885
    return-void
.end method

.method public buildDrawingCache(Z)V
    .locals 17
    .parameter "autoScale"

    .prologue
    .line 12911
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, 0x8000

    and-int v15, v15, v16

    if-eqz v15, :cond_0

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-nez v15, :cond_4

    .line 12913
    :cond_0
    :goto_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    .line 12915
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v16, v0

    sub-int v14, v15, v16

    .line 12916
    .local v14, width:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 12918
    .local v7, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12919
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_6

    iget-boolean v15, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v15, :cond_6

    const/4 v12, 0x1

    .line 12921
    .local v12, scalingRequired:Z
    :goto_1
    if-eqz p1, :cond_1

    if-eqz v12, :cond_1

    .line 12922
    int-to-float v15, v14

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v14, v15

    .line 12923
    int-to-float v15, v7

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v7, v15

    .line 12926
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 12927
    .local v5, drawingCacheBackgroundColor:I
    if-nez v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isOpaque()Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_2
    const/4 v8, 0x1

    .line 12928
    .local v8, opaque:Z
    :goto_2
    if-eqz v1, :cond_8

    iget-boolean v15, v1, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    if-eqz v15, :cond_8

    const/4 v13, 0x1

    .line 12930
    .local v13, use32BitCache:Z
    :goto_3
    if-lez v14, :cond_3

    if-lez v7, :cond_3

    mul-int v16, v14, v7

    if-eqz v8, :cond_9

    if-nez v13, :cond_9

    const/4 v15, 0x2

    :goto_4
    mul-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 12934
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 12935
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    .line 13048
    .end local v1           #attachInfo:Landroid/view/View$AttachInfo;
    .end local v5           #drawingCacheBackgroundColor:I
    .end local v7           #height:I
    .end local v8           #opaque:Z
    .end local v12           #scalingRequired:Z
    .end local v13           #use32BitCache:Z
    .end local v14           #width:I
    :cond_4
    :goto_5
    return-void

    .line 12911
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-nez v15, :cond_4

    goto/16 :goto_0

    .line 12919
    .restart local v1       #attachInfo:Landroid/view/View$AttachInfo;
    .restart local v7       #height:I
    .restart local v14       #width:I
    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 12927
    .restart local v5       #drawingCacheBackgroundColor:I
    .restart local v12       #scalingRequired:Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 12928
    .restart local v8       #opaque:Z
    :cond_8
    const/4 v13, 0x0

    goto :goto_3

    .line 12930
    .restart local v13       #use32BitCache:Z
    :cond_9
    const/4 v15, 0x4

    goto :goto_4

    .line 12939
    :cond_a
    const/4 v4, 0x1

    .line 12940
    .local v4, clear:Z
    if-eqz p1, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 12942
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_6
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    if-ne v15, v14, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    if-eq v15, v7, :cond_e

    .line 12944
    :cond_b
    if-nez v8, :cond_15

    .line 12947
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v16, 0x18

    and-int v15, v15, v16

    sparse-switch v15, :sswitch_data_0

    .line 12958
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12968
    .local v9, quality:Landroid/graphics/Bitmap$Config;
    :goto_7
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 12971
    :cond_c
    :try_start_0
    invoke-static {v14, v7, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 12972
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v15}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 12973
    if-eqz p1, :cond_17

    .line 12974
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 12978
    :goto_8
    if-eqz v8, :cond_d

    if-eqz v13, :cond_d

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12992
    :cond_d
    if-eqz v5, :cond_19

    const/4 v4, 0x1

    .line 12996
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_e
    :goto_9
    if-eqz v1, :cond_1a

    .line 12997
    iget-object v3, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 12998
    .local v3, canvas:Landroid/graphics/Canvas;
    if-nez v3, :cond_f

    .line 12999
    new-instance v3, Landroid/graphics/Canvas;

    .end local v3           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 13001
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    :cond_f
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13006
    const/4 v15, 0x0

    iput-object v15, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13012
    :goto_a
    if-eqz v4, :cond_10

    .line 13013
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 13016
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 13017
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 13019
    .local v10, restoreCount:I
    if-eqz p1, :cond_11

    if-eqz v12, :cond_11

    .line 13020
    iget v11, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 13021
    .local v11, scale:F
    invoke-virtual {v3, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 13024
    .end local v11           #scale:F
    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    neg-int v15, v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13026
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v15, v15, 0x20

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13027
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v15, v15, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mLayerType:I

    if-eqz v15, :cond_13

    .line 13029
    :cond_12
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, 0x8000

    or-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13033
    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v15, v15, 0x80

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    .line 13034
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mPrivateFlags:I

    const v16, -0x600001

    and-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13035
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13040
    :goto_b
    invoke-virtual {v3, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13041
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13043
    if-eqz v1, :cond_4

    .line 13045
    iput-object v3, v1, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    goto/16 :goto_5

    .line 12940
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v10           #restoreCount:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    .line 12949
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :sswitch_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12950
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 12952
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12953
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 12955
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :sswitch_2
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12956
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    goto/16 :goto_7

    .line 12964
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_15
    if-eqz v13, :cond_16

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    :goto_c
    goto/16 :goto_7

    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_16
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_c

    .line 12976
    .restart local v9       #quality:Landroid/graphics/Bitmap$Config;
    :cond_17
    :try_start_1
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 12979
    :catch_0
    move-exception v6

    .line 12983
    .local v6, e:Ljava/lang/OutOfMemoryError;
    if-eqz p1, :cond_18

    .line 12984
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 12988
    :goto_d
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/View;->mCachingFailed:Z

    goto/16 :goto_5

    .line 12986
    :cond_18
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_d

    .line 12992
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 13009
    .end local v9           #quality:Landroid/graphics/Bitmap$Config;
    :cond_1a
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v3       #canvas:Landroid/graphics/Canvas;
    goto/16 :goto_a

    .line 13037
    .restart local v10       #restoreCount:I
    :cond_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 12947
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_2
    .end sparse-switch
.end method

.method public buildLayer()V
    .locals 2

    .prologue
    .line 12424
    iget v0, p0, Landroid/view/View;->mLayerType:I

    if-nez v0, :cond_1

    .line 12442
    :cond_0
    :goto_0
    return-void

    .line 12426
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_2

    .line 12427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This view must be attached to a window first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12430
    :cond_2
    iget v0, p0, Landroid/view/View;->mLayerType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12439
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    goto :goto_0

    .line 12432
    :pswitch_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12435
    invoke-virtual {p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    goto :goto_0

    .line 12430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public callOnClick()Z
    .locals 2

    .prologue
    .line 4248
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4249
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 4250
    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4251
    const/4 v1, 0x1

    .line 4253
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canAcceptDrag()Z
    .locals 1

    .prologue
    .line 16365
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canHaveDisplayList()Z
    .locals 1

    .prologue
    .line 12623
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canResolveLayoutDirection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 11920
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 11924
    :cond_0
    :goto_0
    return v0

    .line 11922
    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 11920
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public canResolveTextAlignment()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 16951
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 16955
    :cond_0
    :goto_0
    return v0

    .line 16953
    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 16951
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public canResolveTextDirection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 16761
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 16765
    :cond_0
    :goto_0
    return v0

    .line 16763
    :pswitch_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 16761
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public canScrollHorizontally(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11483
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    .line 11484
    .local v0, offset:I
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 11485
    .local v1, range:I
    if-nez v1, :cond_1

    move v2, v3

    .line 11489
    :cond_0
    :goto_0
    return v2

    .line 11486
    :cond_1
    if-gez p1, :cond_2

    .line 11487
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 11489
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public canScrollVertically(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11500
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    .line 11501
    .local v0, offset:I
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 11502
    .local v1, range:I
    if-nez v1, :cond_1

    move v2, v3

    .line 11506
    :cond_0
    :goto_0
    return v2

    .line 11503
    :cond_1
    if-gez p1, :cond_2

    .line 11504
    if-gtz v0, :cond_0

    move v2, v3

    goto :goto_0

    .line 11506
    :cond_2
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 0

    .prologue
    .line 8512
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8519
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8520
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 8028
    const/4 v0, 0x0

    return v0
.end method

.method public clearAccessibilityFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6456
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 6457
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6458
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6459
    const/high16 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6460
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 6464
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 6465
    .local v1, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_1

    .line 6466
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v0

    .line 6467
    .local v0, focusHost:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-static {v0, p0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6468
    invoke-virtual {v1, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6471
    .end local v0           #focusHost:Landroid/view/View;
    :cond_1
    return-void
.end method

.method clearAccessibilityFocusNoCallbacks()V
    .locals 2

    .prologue
    .line 6528
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 6529
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6530
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6532
    :cond_0
    return-void
.end method

.method public clearAnimation()V
    .locals 1

    .prologue
    .line 15788
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 15789
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->detach()V

    .line 15791
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 15792
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 15793
    return-void
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4483
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4484
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4486
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4487
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 4490
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4492
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4494
    invoke-virtual {p0}, Landroid/view/View;->ensureInputFocusOnFirstFocusable()V

    .line 4496
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4497
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 4500
    :cond_1
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 11412
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 11391
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 11370
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected computeOpaqueFlags()V
    .locals 3

    .prologue
    .line 10653
    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 10654
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x80

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10659
    :goto_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    .line 10660
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x300

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 10662
    :cond_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10666
    :goto_1
    return-void

    .line 10656
    .end local v0           #flags:I
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x800001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0

    .line 10664
    .restart local v0       #flags:I
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x1000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 11002
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 11473
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 11452
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 11431
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    .line 4877
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 4878
    .local v1, provider:Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_0

    .line 4879
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 4883
    :goto_0
    return-object v0

    .line 4881
    :cond_0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 4882
    .local v0, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 4
    .parameter "menu"

    .prologue
    .line 8042
    invoke-virtual {p0}, Landroid/view/View;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    .local v1, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    move-object v2, p1

    .line 8046
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8048
    invoke-virtual {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 8049
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 8050
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v2, :cond_0

    .line 8051
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v2, p1, p0, v1}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    move-object v2, p1

    .line 8056
    check-cast v2, Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8058
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    .line 8059
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p1}, Landroid/view/ViewParent;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 8061
    :cond_1
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 13055
    iget v9, p0, Landroid/view/View;->mRight:I

    iget v10, p0, Landroid/view/View;->mLeft:I

    sub-int v8, v9, v10

    .line 13056
    .local v8, width:I
    iget v9, p0, Landroid/view/View;->mBottom:I

    iget v10, p0, Landroid/view/View;->mTop:I

    sub-int v4, v9, v10

    .line 13058
    .local v4, height:I
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 13059
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 13060
    .local v7, scale:F
    :goto_0
    int-to-float v9, v8

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v8, v9

    .line 13061
    int-to-float v9, v4

    mul-float/2addr v9, v7

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 13063
    if-lez v8, :cond_1

    .end local v8           #width:I
    :goto_1
    if-lez v4, :cond_2

    .end local v4           #height:I
    :goto_2
    invoke-static {v8, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 13064
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 13065
    new-instance v9, Ljava/lang/OutOfMemoryError;

    invoke-direct {v9}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v9

    .line 13059
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #scale:F
    .restart local v4       #height:I
    .restart local v8       #width:I
    :cond_0
    const/high16 v7, 0x3f80

    goto :goto_0

    .line 13063
    .restart local v7       #scale:F
    :cond_1
    const/4 v8, 0x1

    goto :goto_1

    .end local v8           #width:I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 13068
    .end local v4           #height:I
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 13069
    .local v5, resources:Landroid/content/res/Resources;
    if-eqz v5, :cond_4

    .line 13070
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 13074
    :cond_4
    if-eqz v0, :cond_8

    .line 13075
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13076
    .local v2, canvas:Landroid/graphics/Canvas;
    if-nez v2, :cond_5

    .line 13077
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 13079
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_5
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13084
    const/4 v9, 0x0

    iput-object v9, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13090
    :goto_3
    const/high16 v9, -0x100

    and-int/2addr v9, p2

    if-eqz v9, :cond_6

    .line 13091
    invoke-virtual {v1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 13094
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    .line 13095
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 13096
    .local v6, restoreCount:I
    invoke-virtual {v2, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 13097
    iget v9, p0, Landroid/view/View;->mScrollX:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Landroid/view/View;->mScrollY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13100
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13101
    .local v3, flags:I
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    const v10, -0x600001

    and-int/2addr v9, v10

    iput v9, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13104
    iget v9, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v9, v9, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_9

    .line 13105
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13110
    :goto_4
    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13112
    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13113
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 13115
    if-eqz v0, :cond_7

    .line 13117
    iput-object v2, v0, Landroid/view/View$AttachInfo;->mCanvas:Landroid/graphics/Canvas;

    .line 13120
    :cond_7
    return-object v1

    .line 13087
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #flags:I
    .end local v6           #restoreCount:I
    :cond_8
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2       #canvas:Landroid/graphics/Canvas;
    goto :goto_3

    .line 13107
    .restart local v3       #flags:I
    .restart local v6       #restoreCount:I
    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 15347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->debug(I)V

    .line 15348
    return-void
.end method

.method protected debug(I)V
    .locals 5
    .parameter "depth"

    .prologue
    .line 15360
    add-int/lit8 v3, p1, -0x1

    invoke-static {v3}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15362
    .local v1, output:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15363
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 15364
    .local v0, id:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 15365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15367
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 15368
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 15369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15371
    :cond_1
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15373
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 15374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOCUSED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15375
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15378
    :cond_2
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "frame={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} scroll={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15382
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15384
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    if-eqz v3, :cond_4

    .line 15386
    :cond_3
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "padding={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15389
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15392
    :cond_4
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mMeasureWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMeasureHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mMeasuredHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15395
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15397
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15398
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v3, :cond_5

    .line 15399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BAD! no layout params"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15403
    :goto_0
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15405
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mViewFlags:I

    invoke-static {v4}, Landroid/view/View;->printFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15409
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15411
    invoke-static {p1}, Landroid/view/View;->debugIndent(I)Ljava/lang/String;

    move-result-object v1

    .line 15412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "privateFlags={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    invoke-static {v4}, Landroid/view/View;->printPrivateFlags(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15415
    const-string v3, "View"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15416
    return-void

    .line 15401
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public destroyDrawingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12841
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 12842
    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 12843
    iput-object v1, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    .line 12845
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 12846
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 12847
    iput-object v1, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    .line 12849
    :cond_1
    return-void
.end method

.method protected destroyHardwareResources()V
    .locals 1

    .prologue
    .line 12531
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 12532
    return-void
.end method

.method destroyLayer(Z)Z
    .locals 3
    .parameter "valid"

    .prologue
    const/4 v1, 0x1

    .line 12503
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v2, :cond_2

    .line 12504
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12505
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12508
    :cond_0
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v2}, Landroid/view/HardwareLayer;->destroy()V

    .line 12509
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 12511
    invoke-virtual {p0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 12512
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12516
    .end local v0           #info:Landroid/view/View$AttachInfo;
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .locals 7
    .parameter "info"
    .parameter "visibility"

    .prologue
    const/4 v3, 0x0

    .line 12060
    iput-object p1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12061
    iget v5, p0, Landroid/view/View;->mWindowAttachCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/view/View;->mWindowAttachCount:I

    .line 12063
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12064
    iget-object v5, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_0

    .line 12065
    iget-object v5, p1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->merge(Landroid/view/ViewTreeObserver;)V

    .line 12066
    iput-object v3, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 12068
    :cond_0
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x8

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 12069
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12070
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x10

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12072
    :cond_1
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p0, v5, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 12073
    invoke-virtual {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 12075
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 12076
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_2

    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    .line 12078
    .local v3, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 12083
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View$OnAttachStateChangeListener;

    .line 12084
    .local v2, listener:Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v2, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    goto :goto_0

    .line 12088
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Landroid/view/View$OnAttachStateChangeListener;
    :cond_3
    iget v4, p1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 12089
    .local v4, vis:I
    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 12090
    invoke-virtual {p0, v4}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 12092
    :cond_4
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_5

    .line 12094
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 12096
    :cond_5
    return-void
.end method

.method dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 0
    .parameter "attachInfo"
    .parameter "visibility"

    .prologue
    .line 7792
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 7793
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 7771
    invoke-virtual {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7772
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 12099
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12100
    .local v1, info:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    .line 12101
    iget v5, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 12102
    .local v5, vis:I
    if-eq v5, v7, :cond_0

    .line 12103
    invoke-virtual {p0, v7}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 12107
    .end local v5           #vis:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 12109
    iget-object v2, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 12110
    .local v2, li:Landroid/view/View$ListenerInfo;
    if-eqz v2, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v2}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    .line 12112
    .local v4, listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 12117
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnAttachStateChangeListener;

    .line 12118
    .local v3, listener:Landroid/view/View$OnAttachStateChangeListener;
    invoke-interface {v3, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Landroid/view/View$OnAttachStateChangeListener;
    .end local v4           #listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_1
    move-object v4, v6

    .line 12110
    goto :goto_0

    .line 12122
    .restart local v4       #listeners:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/View$OnAttachStateChangeListener;>;"
    :cond_2
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x10

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 12123
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12124
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    const v8, -0x100001

    and-int/2addr v7, v8

    iput v7, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12127
    :cond_3
    iput-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12128
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 7671
    invoke-virtual {p0, p1}, Landroid/view/View;->onDisplayHint(I)V

    .line 7672
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 16356
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 16357
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$600(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16359
    const/4 v1, 0x1

    .line 16361
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 8779
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 7176
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 7177
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7513
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 7406
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_0

    .line 7407
    iget-object v4, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 7410
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 7411
    .local v1, source:I
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_6

    .line 7412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7414
    .local v0, action:I
    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_3

    .line 7417
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7434
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v2

    .line 7420
    .restart local v0       #action:I
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7427
    .end local v0           #action:I
    :cond_4
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7431
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_5

    .line 7432
    iget-object v2, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_5
    move v2, v3

    .line 7434
    goto :goto_0

    .line 7423
    :cond_6
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7499
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchGetDisplayList()V
    .locals 0

    .prologue
    .line 12612
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 7468
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7469
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$500(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7472
    const/4 v1, 0x1

    .line 7475
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7222
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 7223
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 7228
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7229
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$200(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-interface {v1, p0, v4, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 7242
    :goto_0
    return v1

    .line 7234
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_1
    invoke-virtual {p1, p0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 7236
    goto :goto_0

    .line 7234
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 7239
    :cond_3
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_4

    .line 7240
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_4
    move v1, v3

    .line 7242
    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7208
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7252
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final dispatchPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7535
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 7537
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4739
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4740
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 4742
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4752
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4753
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12222
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 12223
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 12224
    .local v0, state:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 12227
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12228
    invoke-virtual {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 12229
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 12230
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12235
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12155
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget v1, p0, Landroid/view/View;->mID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 12156
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12157
    invoke-virtual {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 12158
    .local v0, state:Landroid/os/Parcelable;
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 12159
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12162
    :cond_0
    if-eqz v0, :cond_1

    .line 12165
    iget v1, p0, Landroid/view/View;->mID:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12168
    .end local v0           #state:Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method dispatchScreenStateChanged(I)V
    .locals 0
    .parameter "screenState"

    .prologue
    .line 11770
    invoke-virtual {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 11771
    return-void
.end method

.method protected dispatchSetActivated(Z)V
    .locals 0
    .parameter "activated"

    .prologue
    .line 14901
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 6061
    return-void
.end method

.method protected dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 14859
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 7155
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7156
    invoke-direct {p0}, Landroid/view/View;->clearDisplayList()V

    .line 7158
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 7159
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 16068
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 16069
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16070
    #getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-interface {v1, v2}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    .line 16073
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7264
    if-eqz p1, :cond_3

    iget-boolean v5, p0, Landroid/view/View;->mEnablePenGesture:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/view/View;->mDisablePenGestureforfactorytest:Z

    if-nez v5, :cond_3

    .line 7265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7266
    .local v0, action:I
    const/4 v2, 0x0

    .line 7268
    .local v2, ret:Z
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    .line 7270
    packed-switch v0, :pswitch_data_0

    .line 7318
    :cond_0
    :goto_0
    if-ne v2, v3, :cond_3

    .line 7320
    invoke-virtual {p0}, Landroid/view/View;->isTextSelectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7321
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/ViewParent;->requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V

    .line 7358
    .end local v0           #action:I
    .end local v2           #ret:Z
    :cond_1
    :goto_1
    return v3

    .line 7273
    .restart local v0       #action:I
    .restart local v2       #ret:Z
    :pswitch_0
    iput-boolean v3, p0, Landroid/view/View;->isPenSideButton:Z

    .line 7274
    const/4 v2, 0x1

    .line 7275
    goto :goto_0

    .line 7277
    :pswitch_1
    iget-boolean v5, p0, Landroid/view/View;->isPenSideButton:Z

    if-eqz v5, :cond_0

    .line 7279
    const/4 v2, 0x1

    .line 7280
    goto :goto_0

    .line 7288
    :pswitch_2
    iget-boolean v5, p0, Landroid/view/View;->isPenSideButton:Z

    if-eqz v5, :cond_0

    .line 7290
    iput-boolean v4, p0, Landroid/view/View;->isPenSideButton:Z

    .line 7291
    const/4 v2, 0x1

    goto :goto_0

    .line 7300
    :cond_2
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 7305
    :pswitch_3
    iput-boolean v4, p0, Landroid/view/View;->isPenSideButton:Z

    goto :goto_0

    .line 7308
    :pswitch_4
    iget-boolean v5, p0, Landroid/view/View;->isPenSideButton:Z

    if-eqz v5, :cond_0

    .line 7310
    const/4 v2, 0x1

    goto :goto_0

    .line 7338
    .end local v0           #action:I
    .end local v2           #ret:Z
    :cond_3
    iget-object v5, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v5, :cond_4

    .line 7339
    iget-object v5, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v5, p1, v4}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 7342
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7344
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7345
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_5

    #getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    if-eqz v5, :cond_5

    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_5

    #getter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Landroid/view/View$ListenerInfo;->access$300(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    invoke-interface {v5, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7350
    :cond_5
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7355
    .end local v1           #li:Landroid/view/View$ListenerInfo;
    :cond_6
    iget-object v3, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_7

    .line 7356
    iget-object v3, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v4}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_7
    move v3, v4

    .line 7358
    goto :goto_1

    .line 7270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 7300
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 7386
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    .line 7387
    iget-object v0, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 7390
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 6226
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 7634
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7635
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 7574
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 7575
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 16049
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 16050
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 7695
    invoke-virtual {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 7696
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 39
    .parameter "canvas"

    .prologue
    .line 13729
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v27, v0

    .line 13730
    .local v27, privateFlags:I
    const/high16 v2, 0x60

    and-int v2, v2, v27

    const/high16 v3, 0x40

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    if-nez v2, :cond_4

    :cond_0
    const/4 v12, 0x1

    .line 13732
    .local v12, dirtyOpaque:Z
    :goto_0
    const v2, -0x600001

    and-int v2, v2, v27

    or-int/lit8 v2, v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13749
    if-nez v12, :cond_2

    .line 13750
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 13751
    .local v9, background:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 13752
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v31, v0

    .line 13753
    .local v31, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v32, v0

    .line 13755
    .local v32, scrollY:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    if-eqz v2, :cond_1

    .line 13756
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13757
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 13760
    :cond_1
    or-int v2, v31, v32

    if-nez v2, :cond_5

    .line 13761
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13771
    .end local v9           #background:Landroid/graphics/drawable/Drawable;
    .end local v31           #scrollX:I
    .end local v32           #scrollY:I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v38, v0

    .line 13772
    .local v38, viewFlags:I
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_6

    const/16 v20, 0x1

    .line 13773
    .local v20, horizontalEdges:Z
    :goto_2
    move/from16 v0, v38

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_7

    const/16 v37, 0x1

    .line 13774
    .local v37, verticalEdges:Z
    :goto_3
    if-nez v37, :cond_8

    if-nez v20, :cond_8

    .line 13776
    if-nez v12, :cond_3

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 13779
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13782
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    .line 13923
    :goto_4
    return-void

    .line 13730
    .end local v12           #dirtyOpaque:Z
    .end local v20           #horizontalEdges:Z
    .end local v37           #verticalEdges:Z
    .end local v38           #viewFlags:I
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 13763
    .restart local v9       #background:Landroid/graphics/drawable/Drawable;
    .restart local v12       #dirtyOpaque:Z
    .restart local v31       #scrollX:I
    .restart local v32       #scrollY:I
    :cond_5
    move/from16 v0, v31

    int-to-float v2, v0

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13764
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 13765
    move/from16 v0, v31

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v32

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 13772
    .end local v9           #background:Landroid/graphics/drawable/Drawable;
    .end local v31           #scrollX:I
    .end local v32           #scrollY:I
    .restart local v38       #viewFlags:I
    :cond_6
    const/16 v20, 0x0

    goto :goto_2

    .line 13773
    .restart local v20       #horizontalEdges:Z
    :cond_7
    const/16 v37, 0x0

    goto :goto_3

    .line 13795
    .restart local v37       #verticalEdges:Z
    :cond_8
    const/16 v16, 0x0

    .line 13796
    .local v16, drawTop:Z
    const/4 v13, 0x0

    .line 13797
    .local v13, drawBottom:Z
    const/4 v14, 0x0

    .line 13798
    .local v14, drawLeft:Z
    const/4 v15, 0x0

    .line 13800
    .local v15, drawRight:Z
    const/16 v36, 0x0

    .line 13801
    .local v36, topFadeStrength:F
    const/4 v11, 0x0

    .line 13802
    .local v11, bottomFadeStrength:F
    const/16 v22, 0x0

    .line 13803
    .local v22, leftFadeStrength:F
    const/16 v29, 0x0

    .line 13806
    .local v29, rightFadeStrength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    .line 13808
    .local v26, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v25

    .line 13809
    .local v25, offsetRequired:Z
    if-eqz v25, :cond_9

    .line 13810
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v2

    add-int v26, v26, v2

    .line 13813
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollX:I

    add-int v21, v2, v26

    .line 13814
    .local v21, left:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    add-int v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v2, v3

    sub-int v28, v2, v26

    .line 13815
    .local v28, right:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeTop(Z)I

    move-result v3

    add-int v35, v2, v3

    .line 13816
    .local v35, top:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v2

    add-int v10, v35, v2

    .line 13818
    .local v10, bottom:I
    if-eqz v25, :cond_a

    .line 13819
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v2

    add-int v28, v28, v2

    .line 13820
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v2

    add-int/2addr v10, v2

    .line 13823
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    move-object/from16 v33, v0

    .line 13824
    .local v33, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    move-object/from16 v0, v33

    iget v2, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 13825
    .local v18, fadeHeight:F
    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    .line 13829
    .local v23, length:I
    if-eqz v37, :cond_b

    add-int v2, v35, v23

    sub-int v3, v10, v23

    if-le v2, v3, :cond_b

    .line 13830
    sub-int v2, v10, v35

    div-int/lit8 v23, v2, 0x2

    .line 13834
    :cond_b
    if-eqz v20, :cond_c

    add-int v2, v21, v23

    sub-int v3, v28, v23

    if-le v2, v3, :cond_c

    .line 13835
    sub-int v2, v28, v21

    div-int/lit8 v23, v2, 0x2

    .line 13838
    :cond_c
    if-eqz v37, :cond_d

    .line 13839
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v36

    .line 13840
    mul-float v2, v36, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    const/16 v16, 0x1

    .line 13841
    :goto_5
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 13842
    mul-float v2, v11, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    const/4 v13, 0x1

    .line 13845
    :cond_d
    :goto_6
    if-eqz v20, :cond_e

    .line 13846
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 13847
    mul-float v2, v22, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    const/4 v14, 0x1

    .line 13848
    :goto_7
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v29

    .line 13849
    mul-float v2, v29, v18

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    const/4 v15, 0x1

    .line 13852
    :cond_e
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v30

    .line 13854
    .local v30, saveCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getSolidColor()I

    move-result v34

    .line 13855
    .local v34, solidColor:I
    if-nez v34, :cond_1c

    .line 13856
    const/16 v19, 0x4

    .line 13858
    .local v19, flags:I
    if-eqz v16, :cond_f

    .line 13859
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    add-int v2, v35, v23

    int-to-float v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 13862
    :cond_f
    if-eqz v13, :cond_10

    .line 13863
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v2, v10, v23

    int-to-float v4, v2

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 13866
    :cond_10
    if-eqz v14, :cond_11

    .line 13867
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    add-int v2, v21, v23

    int-to-float v5, v2

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 13870
    :cond_11
    if-eqz v15, :cond_12

    .line 13871
    sub-int v2, v28, v23

    int-to-float v3, v2

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 13878
    .end local v19           #flags:I
    :cond_12
    :goto_9
    if-nez v12, :cond_13

    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 13881
    :cond_13
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13884
    move-object/from16 v0, v33

    iget-object v7, v0, Landroid/view/View$ScrollabilityCache;->paint:Landroid/graphics/Paint;

    .line 13885
    .local v7, p:Landroid/graphics/Paint;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v24, v0

    .line 13886
    .local v24, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/view/View$ScrollabilityCache;->shader:Landroid/graphics/Shader;

    move-object/from16 v17, v0

    .line 13888
    .local v17, fade:Landroid/graphics/Shader;
    if-eqz v16, :cond_14

    .line 13889
    const/high16 v2, 0x3f80

    mul-float v3, v18, v36

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13890
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13891
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 13892
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    add-int v2, v35, v23

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13895
    :cond_14
    if-eqz v13, :cond_15

    .line 13896
    const/high16 v2, 0x3f80

    mul-float v3, v18, v11

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13897
    const/high16 v2, 0x4334

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 13898
    move/from16 v0, v21

    int-to-float v2, v0

    int-to-float v3, v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13899
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 13900
    move/from16 v0, v21

    int-to-float v3, v0

    sub-int v2, v10, v23

    int-to-float v4, v2

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13903
    :cond_15
    if-eqz v14, :cond_16

    .line 13904
    const/high16 v2, 0x3f80

    mul-float v3, v18, v22

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13905
    const/high16 v2, -0x3d4c

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 13906
    move/from16 v0, v21

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13907
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 13908
    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v35

    int-to-float v4, v0

    add-int v2, v21, v23

    int-to-float v5, v2

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13911
    :cond_16
    if-eqz v15, :cond_17

    .line 13912
    const/high16 v2, 0x3f80

    mul-float v3, v18, v29

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13913
    const/high16 v2, 0x42b4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 13914
    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13915
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 13916
    sub-int v2, v28, v23

    int-to-float v3, v2

    move/from16 v0, v35

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    int-to-float v6, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 13919
    :cond_17
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13922
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->onDrawScrollBars(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 13840
    .end local v7           #p:Landroid/graphics/Paint;
    .end local v17           #fade:Landroid/graphics/Shader;
    .end local v24           #matrix:Landroid/graphics/Matrix;
    .end local v30           #saveCount:I
    .end local v34           #solidColor:I
    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 13842
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 13847
    :cond_1a
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 13849
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 13874
    .restart local v30       #saveCount:I
    .restart local v34       #solidColor:I
    :cond_1c
    invoke-virtual/range {v33 .. v34}, Landroid/view/View$ScrollabilityCache;->setFadeColor(I)V

    goto/16 :goto_9
.end method

.method draw(Landroid/graphics/Canvas;Landroid/view/ViewGroup;J)Z
    .locals 52
    .parameter "canvas"
    .parameter "parent"
    .parameter "drawingTime"

    .prologue
    .line 13385
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v3, :cond_5

    const/16 v51, 0x1

    .line 13386
    .local v51, useDisplayListProperties:Z
    :goto_0
    const/16 v38, 0x0

    .line 13387
    .local v38, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v27

    .line 13388
    .local v27, childHasIdentityMatrix:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v30, v0

    .line 13390
    .local v30, flags:I
    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_0

    .line 13391
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 13392
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v3, v3, -0x101

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13395
    :cond_0
    const/16 v49, 0x0

    .line 13396
    .local v49, transformToApply:Landroid/view/animation/Transformation;
    const/16 v28, 0x0

    .line 13398
    .local v28, concatMatrix:Z
    const/4 v8, 0x0

    .line 13400
    .local v8, scalingRequired:Z
    move-object/from16 v0, p2

    iget-boolean v3, v0, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayerType()I

    move-result v37

    .line 13402
    .local v37, layerType:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v31

    .line 13403
    .local v31, hardwareAccelerated:Z
    const v3, 0x8000

    and-int v3, v3, v30

    if-nez v3, :cond_1

    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_7

    .line 13405
    :cond_1
    const/16 v26, 0x1

    .line 13407
    .local v26, caching:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v8, v3, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 13412
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 13413
    .local v7, a:Landroid/view/animation/Animation;
    if-eqz v7, :cond_a

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    .line 13414
    invoke-direct/range {v3 .. v8}, Landroid/view/View;->drawAnimation(Landroid/view/ViewGroup;JLandroid/view/animation/Animation;Z)Z

    move-result v38

    .line 13415
    invoke-virtual {v7}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v28

    .line 13416
    if-eqz v28, :cond_3

    .line 13417
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 13419
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v49, v0

    .line 13440
    :cond_4
    :goto_3
    if-nez v27, :cond_e

    const/4 v3, 0x1

    :goto_4
    or-int v28, v28, v3

    .line 13444
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13446
    if-nez v28, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    int-to-float v10, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    int-to-float v11, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    int-to-float v13, v3

    sget-object v14, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_f

    .line 13448
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v4, 0x1000

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 13716
    :goto_5
    return v38

    .line 13385
    .end local v7           #a:Landroid/view/animation/Animation;
    .end local v8           #scalingRequired:Z
    .end local v26           #caching:Z
    .end local v27           #childHasIdentityMatrix:Z
    .end local v28           #concatMatrix:Z
    .end local v30           #flags:I
    .end local v31           #hardwareAccelerated:Z
    .end local v37           #layerType:I
    .end local v38           #more:Z
    .end local v49           #transformToApply:Landroid/view/animation/Transformation;
    .end local v51           #useDisplayListProperties:Z
    :cond_5
    const/16 v51, 0x0

    goto/16 :goto_0

    .line 13400
    .restart local v8       #scalingRequired:Z
    .restart local v27       #childHasIdentityMatrix:Z
    .restart local v28       #concatMatrix:Z
    .restart local v30       #flags:I
    .restart local v38       #more:Z
    .restart local v49       #transformToApply:Landroid/view/animation/Transformation;
    .restart local v51       #useDisplayListProperties:Z
    :cond_6
    const/16 v37, 0x0

    goto/16 :goto_1

    .line 13409
    .restart local v31       #hardwareAccelerated:Z
    .restart local v37       #layerType:I
    :cond_7
    if-nez v37, :cond_8

    if-eqz v31, :cond_9

    :cond_8
    const/16 v26, 0x1

    .restart local v26       #caching:Z
    :goto_6
    goto :goto_2

    .end local v26           #caching:Z
    :cond_9
    const/16 v26, 0x0

    goto :goto_6

    .line 13421
    .restart local v7       #a:Landroid/view/animation/Animation;
    .restart local v26       #caching:Z
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_b

    .line 13424
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/DisplayList;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 13425
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 13427
    :cond_b
    if-nez v51, :cond_4

    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_4

    .line 13429
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v34

    .line 13431
    .local v34, hasTransform:Z
    if-eqz v34, :cond_4

    .line 13432
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v50

    .line 13433
    .local v50, transformType:I
    sget v3, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    move/from16 v0, v50

    if-eq v0, v3, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v49, v0

    .line 13435
    :goto_7
    sget v3, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int v3, v3, v50

    if-eqz v3, :cond_d

    const/16 v28, 0x1

    :goto_8
    goto/16 :goto_3

    .line 13433
    :cond_c
    const/16 v49, 0x0

    goto :goto_7

    .line 13435
    :cond_d
    const/16 v28, 0x0

    goto :goto_8

    .line 13440
    .end local v34           #hasTransform:Z
    .end local v50           #transformType:I
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 13451
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags2:I

    const v4, -0x10000001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags2:I

    .line 13453
    if-eqz v31, :cond_10

    .line 13456
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, -0x8000

    and-int/2addr v3, v4

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_2a

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 13457
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13460
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeScroll()V

    .line 13462
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v44, v0

    .line 13463
    .local v44, sx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v45, v0

    .line 13465
    .local v45, sy:I
    const/16 v29, 0x0

    .line 13466
    .local v29, displayList:Landroid/view/DisplayList;
    const/16 v24, 0x0

    .line 13467
    .local v24, cache:Landroid/graphics/Bitmap;
    const/16 v32, 0x0

    .line 13468
    .local v32, hasDisplayList:Z
    if-eqz v26, :cond_12

    .line 13469
    if-nez v31, :cond_2b

    .line 13470
    if-eqz v37, :cond_11

    .line 13471
    const/16 v37, 0x1

    .line 13472
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13474
    :cond_11
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 13498
    :cond_12
    :goto_a
    and-int v51, v51, v32

    .line 13499
    if-eqz v51, :cond_13

    .line 13500
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v29

    .line 13501
    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayList;->isValid()Z

    move-result v3

    if-nez v3, :cond_13

    .line 13505
    const/16 v29, 0x0

    .line 13506
    const/16 v32, 0x0

    .line 13507
    const/16 v51, 0x0

    .line 13511
    :cond_13
    if-eqz v24, :cond_14

    if-eqz v32, :cond_2d

    :cond_14
    const/16 v33, 0x1

    .line 13512
    .local v33, hasNoCache:Z
    :goto_b
    if-nez v24, :cond_2e

    if-nez v32, :cond_2e

    const/4 v3, 0x2

    move/from16 v0, v37

    if-eq v0, v3, :cond_2e

    const/16 v39, 0x1

    .line 13515
    .local v39, offsetForScroll:Z
    :goto_c
    const/16 v40, -0x1

    .line 13516
    .local v40, restoreTo:I
    if-eqz v51, :cond_15

    if-eqz v49, :cond_16

    .line 13517
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v40

    .line 13519
    :cond_16
    if-eqz v39, :cond_2f

    .line 13520
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v3, v3, v44

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int v4, v4, v45

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13536
    :cond_17
    :goto_d
    if-eqz v51, :cond_32

    const/high16 v23, 0x3f80

    .line 13537
    .local v23, alpha:F
    :goto_e
    if-nez v49, :cond_18

    const/high16 v3, 0x3f80

    cmpg-float v3, v23, v3

    if-ltz v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    .line 13539
    :cond_18
    if-nez v49, :cond_19

    if-nez v27, :cond_1d

    .line 13540
    :cond_19
    const/16 v46, 0x0

    .line 13541
    .local v46, transX:I
    const/16 v47, 0x0

    .line 13543
    .local v47, transY:I
    if-eqz v39, :cond_1a

    .line 13544
    move/from16 v0, v44

    neg-int v0, v0

    move/from16 v46, v0

    .line 13545
    move/from16 v0, v45

    neg-int v0, v0

    move/from16 v47, v0

    .line 13548
    :cond_1a
    if-eqz v49, :cond_1c

    .line 13549
    if-eqz v28, :cond_1b

    .line 13550
    if-eqz v51, :cond_33

    .line 13551
    invoke-virtual/range {v49 .. v49}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/DisplayList;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 13559
    :goto_f
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13562
    :cond_1b
    invoke-virtual/range {v49 .. v49}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v48

    .line 13563
    .local v48, transformAlpha:F
    const/high16 v3, 0x3f80

    cmpg-float v3, v48, v3

    if-gez v3, :cond_1c

    .line 13564
    mul-float v23, v23, v48

    .line 13565
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13569
    .end local v48           #transformAlpha:F
    :cond_1c
    if-nez v27, :cond_1d

    if-nez v51, :cond_1d

    .line 13570
    move/from16 v0, v46

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v47

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13571
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 13572
    move/from16 v0, v46

    int-to-float v3, v0

    move/from16 v0, v47

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13577
    .end local v46           #transX:I
    .end local v47           #transY:I
    :cond_1d
    const/high16 v3, 0x3f80

    cmpg-float v3, v23, v3

    if-ltz v3, :cond_1e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_21

    .line 13579
    :cond_1e
    const/high16 v3, 0x3f80

    cmpg-float v3, v23, v3

    if-gez v3, :cond_34

    .line 13580
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    or-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    .line 13584
    :goto_10
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13585
    if-eqz v33, :cond_21

    .line 13586
    const/high16 v3, 0x437f

    mul-float v3, v3, v23

    float-to-int v14, v3

    .line 13587
    .local v14, multipliedAlpha:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v3

    if-nez v3, :cond_38

    .line 13588
    const/4 v15, 0x4

    .line 13589
    .local v15, layerFlags:I
    and-int/lit8 v3, v30, 0x1

    if-nez v3, :cond_1f

    if-eqz v37, :cond_20

    .line 13591
    :cond_1f
    or-int/lit8 v15, v15, 0x10

    .line 13593
    :cond_20
    if-eqz v51, :cond_35

    .line 13594
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v3, v3, v23

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/DisplayList;->setAlpha(F)V

    .line 13612
    .end local v14           #multipliedAlpha:I
    .end local v15           #layerFlags:I
    :cond_21
    :goto_11
    and-int/lit8 v3, v30, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    if-nez v51, :cond_22

    .line 13614
    if-eqz v39, :cond_3a

    .line 13615
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    add-int v3, v3, v44

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    add-int v4, v4, v45

    move-object/from16 v0, p1

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 13625
    :cond_22
    :goto_12
    if-nez v51, :cond_23

    if-eqz v32, :cond_23

    .line 13626
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v29

    .line 13627
    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayList;->isValid()Z

    move-result v3

    if-nez v3, :cond_23

    .line 13631
    const/16 v29, 0x0

    .line 13632
    const/16 v32, 0x0

    .line 13636
    :cond_23
    if-eqz v33, :cond_42

    .line 13637
    const/16 v36, 0x0

    .line 13638
    .local v36, layerRendered:Z
    const/4 v3, 0x2

    move/from16 v0, v37

    if-ne v0, v3, :cond_24

    if-nez v51, :cond_24

    .line 13639
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v35

    .line 13640
    .local v35, layer:Landroid/view/HardwareLayer;
    if-eqz v35, :cond_3d

    invoke-virtual/range {v35 .. v35}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 13641
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f

    mul-float v4, v4, v23

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v3, p1

    .line 13642
    check-cast v3, Landroid/view/HardwareCanvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 13643
    const/16 v36, 0x1

    .line 13653
    .end local v35           #layer:Landroid/view/HardwareLayer;
    :cond_24
    :goto_13
    if-nez v36, :cond_25

    .line 13654
    if-nez v32, :cond_41

    .line 13656
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_40

    .line 13657
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13658
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 13692
    .end local v36           #layerRendered:Z
    :cond_25
    :goto_14
    if-ltz v40, :cond_26

    .line 13693
    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13696
    :cond_26
    if-eqz v7, :cond_28

    if-nez v38, :cond_28

    .line 13697
    if-nez v31, :cond_27

    invoke-virtual {v7}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v3

    if-nez v3, :cond_27

    .line 13698
    const/16 v3, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->onSetAlpha(I)Z

    .line 13700
    :cond_27
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 13703
    :cond_28
    if-eqz v38, :cond_29

    if-eqz v31, :cond_29

    .line 13707
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 13708
    invoke-virtual {v7}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_29

    .line 13710
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 13714
    :cond_29
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/View;->mRecreateDisplayList:Z

    goto/16 :goto_5

    .line 13456
    .end local v23           #alpha:F
    .end local v24           #cache:Landroid/graphics/Bitmap;
    .end local v29           #displayList:Landroid/view/DisplayList;
    .end local v32           #hasDisplayList:Z
    .end local v33           #hasNoCache:Z
    .end local v39           #offsetForScroll:Z
    .end local v40           #restoreTo:I
    .end local v44           #sx:I
    .end local v45           #sy:I
    :cond_2a
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 13476
    .restart local v24       #cache:Landroid/graphics/Bitmap;
    .restart local v29       #displayList:Landroid/view/DisplayList;
    .restart local v32       #hasDisplayList:Z
    .restart local v44       #sx:I
    .restart local v45       #sy:I
    :cond_2b
    packed-switch v37, :pswitch_data_0

    goto/16 :goto_a

    .line 13493
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_a

    .line 13478
    :pswitch_1
    if-eqz v51, :cond_2c

    .line 13479
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_a

    .line 13481
    :cond_2c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 13482
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 13484
    goto/16 :goto_a

    .line 13486
    :pswitch_2
    if-eqz v51, :cond_12

    .line 13487
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v32

    goto/16 :goto_a

    .line 13511
    :cond_2d
    const/16 v33, 0x0

    goto/16 :goto_b

    .line 13512
    .restart local v33       #hasNoCache:Z
    :cond_2e
    const/16 v39, 0x0

    goto/16 :goto_c

    .line 13522
    .restart local v39       #offsetForScroll:Z
    .restart local v40       #restoreTo:I
    :cond_2f
    if-nez v51, :cond_30

    .line 13523
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13525
    :cond_30
    if-eqz v8, :cond_17

    .line 13526
    if-eqz v51, :cond_31

    .line 13528
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v40

    .line 13531
    :cond_31
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v41, v3, v4

    .line 13532
    .local v41, scale:F
    move-object/from16 v0, p1

    move/from16 v1, v41

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_d

    .line 13536
    .end local v41           #scale:F
    :cond_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v23

    goto/16 :goto_e

    .line 13555
    .restart local v23       #alpha:F
    .restart local v46       #transX:I
    .restart local v47       #transY:I
    :cond_33
    move/from16 v0, v46

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v47

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13556
    invoke-virtual/range {v49 .. v49}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 13557
    move/from16 v0, v46

    int-to-float v3, v0

    move/from16 v0, v47

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_f

    .line 13582
    .end local v46           #transX:I
    .end local v47           #transY:I
    :cond_34
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags3:I

    and-int/lit8 v3, v3, -0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags3:I

    goto/16 :goto_10

    .line 13595
    .restart local v14       #multipliedAlpha:I
    .restart local v15       #layerFlags:I
    :cond_35
    if-nez v37, :cond_21

    .line 13596
    if-eqz v32, :cond_36

    const/16 v42, 0x0

    .line 13597
    .local v42, scrollX:I
    :goto_15
    if-eqz v32, :cond_37

    const/16 v43, 0x0

    .line 13598
    .local v43, scrollY:I
    :goto_16
    move/from16 v0, v42

    int-to-float v10, v0

    move/from16 v0, v43

    int-to-float v11, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    add-int v3, v3, v42

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v12, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    add-int v3, v3, v43

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    int-to-float v13, v3

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto/16 :goto_11

    .end local v42           #scrollX:I
    .end local v43           #scrollY:I
    :cond_36
    move/from16 v42, v44

    .line 13596
    goto :goto_15

    .restart local v42       #scrollX:I
    :cond_37
    move/from16 v43, v45

    .line 13597
    goto :goto_16

    .line 13603
    .end local v15           #layerFlags:I
    .end local v42           #scrollX:I
    :cond_38
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x4

    or-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_11

    .line 13607
    .end local v14           #multipliedAlpha:I
    :cond_39
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_21

    .line 13608
    const/16 v3, 0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->onSetAlpha(I)Z

    .line 13609
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_11

    .line 13617
    :cond_3a
    if-eqz v8, :cond_3b

    if-nez v24, :cond_3c

    .line 13618
    :cond_3b
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v6, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_12

    .line 13620
    :cond_3c
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_12

    .line 13645
    .restart local v35       #layer:Landroid/view/HardwareLayer;
    .restart local v36       #layerRendered:Z
    :cond_3d
    if-eqz v32, :cond_3e

    const/16 v42, 0x0

    .line 13646
    .restart local v42       #scrollX:I
    :goto_17
    if-eqz v32, :cond_3f

    const/16 v43, 0x0

    .line 13647
    .restart local v43       #scrollY:I
    :goto_18
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    add-int v3, v3, v42

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    add-int v3, v3, v43

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x14

    move-object/from16 v16, p1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto/16 :goto_13

    .end local v42           #scrollX:I
    .end local v43           #scrollY:I
    :cond_3e
    move/from16 v42, v44

    .line 13645
    goto :goto_17

    .restart local v42       #scrollX:I
    :cond_3f
    move/from16 v43, v45

    .line 13646
    goto :goto_18

    .line 13660
    .end local v35           #layer:Landroid/view/HardwareLayer;
    .end local v42           #scrollX:I
    :cond_40
    invoke-virtual/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_14

    .line 13663
    :cond_41
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v3, p1

    .line 13664
    check-cast v3, Landroid/view/HardwareCanvas;

    const/4 v4, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v3, v0, v4, v1}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    goto/16 :goto_14

    .line 13667
    .end local v36           #layerRendered:Z
    :cond_42
    if-eqz v24, :cond_25

    .line 13668
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x600001

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mPrivateFlags:I

    .line 13671
    if-nez v37, :cond_46

    .line 13672
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 13673
    .local v25, cachePaint:Landroid/graphics/Paint;
    if-nez v25, :cond_43

    .line 13674
    new-instance v25, Landroid/graphics/Paint;

    .end local v25           #cachePaint:Landroid/graphics/Paint;
    invoke-direct/range {v25 .. v25}, Landroid/graphics/Paint;-><init>()V

    .line 13675
    .restart local v25       #cachePaint:Landroid/graphics/Paint;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 13676
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 13678
    :cond_43
    const/high16 v3, 0x3f80

    cmpg-float v3, v23, v3

    if-gez v3, :cond_45

    .line 13679
    const/high16 v3, 0x437f

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13680
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v3, v3, 0x1000

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 13689
    :cond_44
    :goto_19
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_14

    .line 13681
    :cond_45
    move/from16 v0, v30

    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_44

    .line 13682
    const/16 v3, 0xff

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13683
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v3, v3, -0x1001

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_19

    .line 13686
    .end local v25           #cachePaint:Landroid/graphics/Paint;
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 13687
    .restart local v25       #cachePaint:Landroid/graphics/Paint;
    const/high16 v3, 0x437f

    mul-float v3, v3, v23

    float-to-int v3, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_19

    .line 13476
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 14314
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 14315
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14316
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 14318
    :cond_0
    return-void
.end method

.method ensureInputFocusOnFirstFocusable()V
    .locals 1

    .prologue
    .line 4503
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 4504
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4505
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4507
    :cond_0
    return-void
.end method

.method ensureTransformationInfo()V
    .locals 1

    .prologue
    .line 8973
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-nez v0, :cond_0

    .line 8974
    new-instance v0, Landroid/view/View$TransformationInfo;

    invoke-direct {v0}, Landroid/view/View$TransformationInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 8976
    :cond_0
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 5268
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
    .locals 4
    .parameter "root"
    .parameter "direction"

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 6238
    sparse-switch p2, :sswitch_data_0

    .line 6265
    :cond_0
    :goto_0
    return-object v1

    .line 6240
    :sswitch_0
    iget v2, p0, Landroid/view/View;->mNextFocusLeftId:I

    if-eq v2, v3, :cond_0

    .line 6241
    iget v1, p0, Landroid/view/View;->mNextFocusLeftId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6243
    :sswitch_1
    iget v2, p0, Landroid/view/View;->mNextFocusRightId:I

    if-eq v2, v3, :cond_0

    .line 6244
    iget v1, p0, Landroid/view/View;->mNextFocusRightId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6246
    :sswitch_2
    iget v2, p0, Landroid/view/View;->mNextFocusUpId:I

    if-eq v2, v3, :cond_0

    .line 6247
    iget v1, p0, Landroid/view/View;->mNextFocusUpId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6249
    :sswitch_3
    iget v2, p0, Landroid/view/View;->mNextFocusDownId:I

    if-eq v2, v3, :cond_0

    .line 6250
    iget v1, p0, Landroid/view/View;->mNextFocusDownId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6252
    :sswitch_4
    iget v2, p0, Landroid/view/View;->mNextFocusForwardId:I

    if-eq v2, v3, :cond_0

    .line 6253
    iget v1, p0, Landroid/view/View;->mNextFocusForwardId:I

    invoke-direct {p0, p1, v1}, Landroid/view/View;->findViewInsideOutShouldExist(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6255
    :sswitch_5
    iget v2, p0, Landroid/view/View;->mID:I

    if-eq v2, v3, :cond_0

    .line 6256
    iget v0, p0, Landroid/view/View;->mID:I

    .line 6257
    .local v0, id:I
    new-instance v1, Landroid/view/View$2;

    invoke-direct {v1, p0, v0}, Landroid/view/View$2;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p0, v1}, Landroid/view/View;->findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 6238
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method final findViewByAccessibilityId(I)Landroid/view/View;
    .locals 1
    .parameter "accessibilityId"

    .prologue
    .line 15087
    if-gez p1, :cond_0

    .line 15088
    const/4 v0, 0x0

    .line 15090
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .parameter "accessibilityId"

    .prologue
    .line 15107
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 15110
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 15074
    if-gez p1, :cond_0

    .line 15075
    const/4 v0, 0x0

    .line 15077
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewTraversal(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 15136
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final findViewByPredicateInsideOut(Landroid/view/View;Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .locals 4
    .parameter "start"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 15156
    .local p2, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 15158
    .local v0, childToSkip:Landroid/view/View;
    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 15159
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_0

    if-ne p1, p0, :cond_1

    .line 15165
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return-object v2

    .line 15163
    .restart local v2       #view:Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 15164
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_2

    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_3

    .line 15165
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 15168
    :cond_3
    move-object v0, p1

    move-object p1, v1

    .line 15169
    check-cast p1, Landroid/view/View;

    .line 15170
    goto :goto_0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 15060
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15063
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 15035
    iget v0, p0, Landroid/view/View;->mID:I

    if-ne p1, v0, :cond_0

    .line 15038
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 15121
    if-nez p1, :cond_0

    .line 15122
    const/4 v0, 0x0

    .line 15124
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 15047
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15050
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter
    .parameter "searched"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 6360
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6361
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_0

    .line 6362
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6373
    :cond_0
    :goto_0
    return-void

    .line 6364
    :cond_1
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 6367
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 6368
    .local v1, searchedLowerCase:Ljava/lang/String;
    iget-object v2, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 6369
    .local v0, contentDescriptionLowerCase:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6370
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter "insets"

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 5558
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5559
    iput v3, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 5560
    iput v3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 5561
    iput-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 5562
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    and-int/lit16 v1, v1, 0x600

    if-nez v1, :cond_2

    .line 5565
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 5566
    const/4 v0, 0x1

    .line 5572
    :cond_1
    :goto_0
    return v0

    .line 5568
    :cond_2
    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_0
.end method

.method public fitsSystemWindows()Z
    .locals 1

    .prologue
    .line 5617
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method flushLayer()V
    .locals 2

    .prologue
    .line 12446
    iget v0, p0, Landroid/view/View;->mLayerType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 12447
    iget-object v0, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->flush()V

    .line 12449
    :cond_0
    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 1
    .parameter "direction"

    .prologue
    .line 6207
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 6208
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 6210
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceLayout()V
    .locals 2

    .prologue
    .line 15471
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15472
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15473
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10
    .parameter "region"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 15878
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 15879
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz p1, :cond_0

    if-eqz v6, :cond_0

    .line 15880
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15881
    .local v8, pflags:I
    and-int/lit16 v0, v8, 0x80

    if-nez v0, :cond_1

    .line 15884
    iget-object v7, v6, Landroid/view/View$AttachInfo;->mTransparentLocation:[I

    .line 15885
    .local v7, location:[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 15886
    aget v1, v7, v3

    aget v2, v7, v9

    aget v0, v7, v3

    iget v3, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v0, v3

    aget v0, v7, v9

    iget v4, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v0, v4

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v4, v0, v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 15895
    .end local v7           #location:[I
    .end local v8           #pflags:I
    :cond_0
    :goto_0
    return v9

    .line 15888
    .restart local v8       #pflags:I
    :cond_1
    and-int/lit16 v0, v8, 0x100

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 15892
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->applyDrawableToTransparentRegion(Landroid/graphics/drawable/Drawable;Landroid/graphics/Region;)V

    goto :goto_0
.end method

.method public getAccessibilityCursorPosition()I
    .locals 1

    .prologue
    .line 7087
    iget v0, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    return v0
.end method

.method public getAccessibilityFocusable()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "auto"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "yes"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "no"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 6754
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x6000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1d

    return v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 5150
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 5151
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 5153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccessibilityViewId()I
    .locals 2

    .prologue
    .line 5166
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5167
    sget v0, Landroid/view/View;->sNextAccessibilityViewId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/view/View;->sNextAccessibilityViewId:I

    iput v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    .line 5169
    :cond_0
    iget v0, p0, Landroid/view/View;->mAccessibilityViewId:I

    return v0
.end method

.method public getAccessibilityWindowId()I
    .locals 1

    .prologue
    .line 5180
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getActualAndReportedWindowLeftDelta()I
    .locals 2

    .prologue
    .line 5048
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 5049
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mActualWindowLeft:I

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    sub-int/2addr v0, v1

    .line 5051
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActualAndReportedWindowTopDelta()I
    .locals 2

    .prologue
    .line 5060
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 5061
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mActualWindowTop:I

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    sub-int/2addr v0, v1

    .line 5063
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9474
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 15769
    iget-object v0, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 12034
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 12035
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 12036
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 12037
    .local v1, appWindowToken:Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 12038
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    .line 12042
    .end local v1           #appWindowToken:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 14623
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 15444
    const/4 v0, -0x1

    return v0
.end method

.method public final getBottom()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 9634
    iget v0, p0, Landroid/view/View;->mBottom:I

    return v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 11103
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 1

    .prologue
    .line 13217
    const/4 v0, 0x0

    return v0
.end method

.method public getCameraDistance()F
    .locals 3

    .prologue
    .line 9056
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9057
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 9058
    .local v0, dpi:F
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9059
    .local v1, info:Landroid/view/View$TransformationInfo;
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 9060
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 9061
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9063
    :cond_0
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v2

    mul-float/2addr v2, v0

    neg-float v2, v2

    return v2
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
    .end annotation

    .prologue
    .line 5196
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 7842
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 8074
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContextMenuZOrderToTop()Z
    .locals 1

    .prologue
    .line 18363
    iget-boolean v0, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    return v0
.end method

.method public getDisplayList()Landroid/view/DisplayList;
    .locals 2

    .prologue
    .line 12771
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/View;->getDisplayList(Landroid/view/DisplayList;Z)Landroid/view/DisplayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 12772
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    return-object v0
.end method

.method public final getDrawableState()[I
    .locals 1

    .prologue
    .line 14349
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 14350
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 14354
    :goto_0
    return-object v0

    .line 14352
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/View;->mDrawableState:[I

    .line 14353
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14354
    iget-object v0, p0, Landroid/view/View;->mDrawableState:[I

    goto :goto_0
.end method

.method public getDrawingCache()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 12790
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "autoScale"

    .prologue
    const/high16 v2, 0x2

    const v1, 0x8000

    .line 12821
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 12822
    const/4 v0, 0x0

    .line 12827
    :goto_0
    return-object v0

    .line 12824
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 12825
    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 12827
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/view/View;->mDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/View;->mUnscaledDrawingCache:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getDrawingCacheBackgroundColor()I
    .locals 1

    .prologue
    .line 12875
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    return v0
.end method

.method public getDrawingCacheQuality()I
    .locals 2

    .prologue
    .line 5321
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x18

    and-int/2addr v0, v1

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    .line 8862
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 8863
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 8864
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 8865
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 8866
    return-void
.end method

.method public getDrawingTime()J
    .locals 2

    .prologue
    .line 12266
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-wide v0, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected getFadeHeight(Z)I
    .locals 3
    .parameter "offsetRequired"

    .prologue
    .line 13235
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 13236
    .local v0, padding:I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 13237
    :cond_0
    iget v1, p0, Landroid/view/View;->mBottom:I

    iget v2, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    return v1
.end method

.method protected getFadeTop(Z)I
    .locals 2
    .parameter "offsetRequired"

    .prologue
    .line 13225
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    .line 13226
    .local v0, top:I
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTopPaddingOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 13227
    :cond_0
    return v0
.end method

.method public getFilterTouchesWhenObscured()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6123
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFitsSystemWindows()Z
    .locals 2

    .prologue
    .line 5612
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocusables(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6291
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6292
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 6293
    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 10011
    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 10012
    return-void
.end method

.method public final getGlobalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 10042
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 5
    .parameter "r"
    .parameter "globalOffset"

    .prologue
    const/4 v2, 0x0

    .line 10029
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 10030
    .local v1, width:I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 10031
    .local v0, height:I
    if-lez v1, :cond_2

    if-lez v0, :cond_2

    .line 10032
    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 10033
    if-eqz p2, :cond_0

    .line 10034
    iget v3, p0, Landroid/view/View;->mScrollX:I

    neg-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    neg-int v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 10036
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, p1, p2}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 10038
    :cond_2
    return v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 10680
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 10681
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    .line 10683
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 12458
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v3}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 12491
    :cond_0
    :goto_0
    return-object v2

    .line 12463
    :cond_1
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v3}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12465
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 12466
    .local v1, width:I
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int v0, v3, v4

    .line 12468
    .local v0, height:I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 12472
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v3, :cond_4

    .line 12473
    :cond_2
    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    if-nez v3, :cond_5

    .line 12474
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v4

    invoke-virtual {v3, v1, v0, v4}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v3

    iput-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    .line 12476
    iget-object v3, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 12483
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v3}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12487
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-direct {p0, v3}, Landroid/view/View;->getHardwareLayerDisplayList(Landroid/view/HardwareLayer;)Landroid/view/DisplayList;

    move-result-object v3

    iget-object v4, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Landroid/view/HardwareLayer;->redraw(Landroid/view/DisplayList;Landroid/graphics/Rect;)V

    .line 12488
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 12491
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    goto :goto_0

    .line 12477
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v3}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_6

    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v3}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 12478
    :cond_6
    iget-object v3, p0, Landroid/view/View;->mHardwareLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v3, v1, v0}, Landroid/view/HardwareLayer;->resize(II)V

    .line 12479
    iget-object v3, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method public getHardwareRenderer()Landroid/view/HardwareRenderer;
    .locals 1

    .prologue
    .line 12633
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 12634
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 12636
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeight()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 8851
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 7
    .parameter "outRect"

    .prologue
    .line 9966
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9967
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9968
    .local v0, info:Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v2, :cond_1

    .line 9969
    :cond_0
    iget v2, p0, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/View;->mTop:I

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9978
    :goto_0
    return-void

    .line 9971
    :cond_1
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 9972
    .local v1, tmpRect:Landroid/graphics/RectF;
    iget v2, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    neg-float v2, v2

    iget v3, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    neg-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9974
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 9975
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mTop:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mTop:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 3911
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3912
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3913
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3914
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3917
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHorizontalScrollFactor()F
    .locals 1

    .prologue
    .line 16605
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3949
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3950
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3951
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3952
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_0

    .line 3953
    invoke-virtual {v1, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 3954
    .local v2, size:I
    if-gtz v2, :cond_0

    .line 3955
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3961
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_0
    return v2
.end method

.method public getHoverPopupWindow()Landroid/widget/HoverPopupWindow;
    .locals 2

    .prologue
    .line 18318
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-nez v0, :cond_0

    .line 18319
    new-instance v0, Landroid/widget/HoverPopupWindow;

    iget v1, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-direct {v0, p0, v1}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 18321
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    return-object v0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 15225
    iget v0, p0, Landroid/view/View;->mID:I

    return v0
.end method

.method public getImportantForAccessibility()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "accessibility"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "auto"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "yes"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "no"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 6686
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x30

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method final getInverseMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 9033
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9034
    .local v0, info:Landroid/view/View$TransformationInfo;
    if-eqz v0, :cond_2

    .line 9035
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9036
    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1700(Landroid/view/View$TransformationInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9037
    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    if-nez v1, :cond_0

    .line 9038
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1802(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9040
    :cond_0
    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 9041
    const/4 v1, 0x0

    #setter for: Landroid/view/View$TransformationInfo;->mInverseMatrixDirty:Z
    invoke-static {v0, v1}, Landroid/view/View$TransformationInfo;->access$1702(Landroid/view/View$TransformationInfo;Z)Z

    .line 9043
    :cond_1
    #getter for: Landroid/view/View$TransformationInfo;->mInverseMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1800(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 9045
    :goto_0
    return-object v1

    :cond_2
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public getIterableTextForAccessibility()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 7080
    iget-object v0, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIteratorForGranularity(I)Landroid/view/AccessibilityIterators$TextSegmentIterator;
    .locals 3
    .parameter "granularity"

    .prologue
    .line 7117
    sparse-switch p1, :sswitch_data_0

    .line 7148
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 7119
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7120
    .local v1, text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 7121
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;

    move-result-object v0

    .line 7124
    .local v0, iterator:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .line 7129
    .end local v0           #iterator:Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
    .end local v1           #text:Ljava/lang/CharSequence;
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7130
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 7131
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    move-result-object v0

    .line 7134
    .local v0, iterator:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .line 7139
    .end local v0           #iterator:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .end local v1           #text:Ljava/lang/CharSequence;
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7140
    .restart local v1       #text:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 7141
    invoke-static {}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object v0

    .line 7143
    .local v0, iterator:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->initialize(Ljava/lang/String;)V

    goto :goto_0

    .line 7117
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public getKeepScreenOn()Z
    .locals 2

    .prologue
    .line 5352
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    .prologue
    .line 7194
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayerType()I
    .locals 1

    .prologue
    .line 12407
    iget v0, p0, Landroid/view/View;->mLayerType:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 5814
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation

    .prologue
    .line 10170
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method public final getLeft()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 9707
    iget v0, p0, Landroid/view/View;->mLeft:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 11118
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 1

    .prologue
    .line 13175
    const/4 v0, 0x0

    return v0
.end method

.method public getListViewItemTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15260
    iget-object v0, p0, Landroid/view/View;->mListViewItemTag:Ljava/lang/Object;

    return-object v0
.end method

.method getListenerInfo()Landroid/view/View$ListenerInfo;
    .locals 1

    .prologue
    .line 4076
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    if-eqz v0, :cond_0

    .line 4077
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4080
    :goto_0
    return-object v0

    .line 4079
    :cond_0
    new-instance v0, Landroid/view/View$ListenerInfo;

    invoke-direct {v0}, Landroid/view/View$ListenerInfo;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4080
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    goto :goto_0
.end method

.method public final getLocalVisibleRect(Landroid/graphics/Rect;)Z
    .locals 3
    .parameter "r"

    .prologue
    .line 10046
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 10047
    .local v0, offset:Landroid/graphics/Point;
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10048
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 10049
    const/4 v1, 0x1

    .line 10051
    :goto_1
    return v1

    .line 10046
    .end local v0           #offset:Landroid/graphics/Point;
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    .line 10051
    .restart local v0       #offset:Landroid/graphics/Point;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getLocationInWindow([I)V
    .locals 9
    .parameter "location"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 14982
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 14983
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 14986
    :cond_1
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v4, :cond_2

    .line 14988
    aput v6, p1, v7

    aput v6, p1, v6

    .line 15027
    :goto_0
    return-void

    .line 14992
    :cond_2
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 14993
    .local v0, position:[F
    const/4 v4, 0x0

    aput v4, v0, v7

    aput v4, v0, v6

    .line 14995
    invoke-virtual {p0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_3

    .line 14996
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 14999
    :cond_3
    aget v4, v0, v6

    iget v5, p0, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 15000
    aget v4, v0, v7

    iget v5, p0, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 15002
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 15003
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_1
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_5

    move-object v1, v2

    .line 15004
    check-cast v1, Landroid/view/View;

    .line 15006
    .local v1, view:Landroid/view/View;
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v6

    .line 15007
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 15009
    invoke-virtual {v1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_4

    .line 15010
    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 15013
    :cond_4
    aget v4, v0, v6

    iget v5, v1, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v6

    .line 15014
    aget v4, v0, v7

    iget v5, v1, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v0, v7

    .line 15016
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 15017
    goto :goto_1

    .line 15019
    .end local v1           #view:Landroid/view/View;
    :cond_5
    instance-of v4, v2, Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_6

    move-object v3, v2

    .line 15021
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 15022
    .local v3, vr:Landroid/view/ViewRootImpl;
    aget v4, v0, v7

    iget v5, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v0, v7

    .line 15025
    .end local v3           #vr:Landroid/view/ViewRootImpl;
    :cond_6
    aget v4, v0, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v6

    .line 15026
    aget v4, v0, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p1, v7

    goto :goto_0
.end method

.method public getLocationOnScreen([I)V
    .locals 4
    .parameter "location"

    .prologue
    .line 14965
    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 14967
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 14968
    .local v0, info:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 14969
    const/4 v1, 0x0

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 14970
    const/4 v1, 0x1

    aget v2, p1, v1

    iget v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 14972
    :cond_0
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 8941
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 8942
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8943
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1100(Landroid/view/View$TransformationInfo;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 8945
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public final getMeasuredHeight()I
    .locals 2

    .prologue
    .line 8900
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredHeightAndState()I
    .locals 1

    .prologue
    .line 8913
    iget v0, p0, Landroid/view/View;->mMeasuredHeight:I

    return v0
.end method

.method public final getMeasuredState()I
    .locals 2

    .prologue
    .line 8924
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mMeasuredHeight:I

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidth()I
    .locals 2

    .prologue
    .line 8876
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final getMeasuredWidthAndState()I
    .locals 1

    .prologue
    .line 8889
    iget v0, p0, Landroid/view/View;->mMeasuredWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 15713
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 15742
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    return v0
.end method

.method public getNextFocusDownId()I
    .locals 1

    .prologue
    .line 5439
    iget v0, p0, Landroid/view/View;->mNextFocusDownId:I

    return v0
.end method

.method public getNextFocusForwardId()I
    .locals 1

    .prologue
    .line 5460
    iget v0, p0, Landroid/view/View;->mNextFocusForwardId:I

    return v0
.end method

.method public getNextFocusLeftId()I
    .locals 1

    .prologue
    .line 5376
    iget v0, p0, Landroid/view/View;->mNextFocusLeftId:I

    return v0
.end method

.method public getNextFocusRightId()I
    .locals 1

    .prologue
    .line 5397
    iget v0, p0, Landroid/view/View;->mNextFocusRightId:I

    return v0
.end method

.method public getNextFocusUpId()I
    .locals 1

    .prologue
    .line 5418
    iget v0, p0, Landroid/view/View;->mNextFocusUpId:I

    return v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 2

    .prologue
    .line 4161
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4162
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    .line 14817
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    if-nez v0, :cond_0

    .line 14818
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_0
    iput-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    .line 14820
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    return-object v0

    .line 14818
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLayoutInsets()Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_0
.end method

.method public getOverScrollMode()I
    .locals 1

    .prologue
    .line 16554
    iget v0, p0, Landroid/view/View;->mOverScrollMode:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 14751
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingEnd()I
    .locals 2

    .prologue
    .line 14798
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 14762
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 14786
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method public getPaddingStart()I
    .locals 2

    .prologue
    .line 14774
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    goto :goto_0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 14740
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    return v0
.end method

.method public final getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 8788
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 2

    .prologue
    .line 6810
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 6811
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    .line 6812
    .local v0, parentView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->includeForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6813
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 6818
    .end local v0           #parentView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 6815
    .restart local v0       #parentView:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 6818
    .end local v0           #parentView:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPivotX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9378
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9429
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvedLayoutDirection()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "RESOLVED_DIRECTION_LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "RESOLVED_DIRECTION_RTL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 5855
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 5856
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutDirection()V

    .line 5858
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvedLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .parameter "who"

    .prologue
    .line 14278
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getResolvedTextAlignment()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    const/high16 v1, 0x1

    .line 16874
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 16875
    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()V

    .line 16877
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0xe

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getResolvedTextDirection()I
    .locals 2

    .prologue
    .line 16679
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 16680
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 16682
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c00

    shr-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 14198
    iget-object v0, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public final getRight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 9774
    iget v0, p0, Landroid/view/View;->mRight:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 11132
    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 1

    .prologue
    .line 13189
    const/4 v0, 0x0

    return v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 3

    .prologue
    .line 14941
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    .line 14942
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v2, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 14943
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 14954
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return-object v1

    .line 14948
    :cond_0
    move-object v0, p0

    .line 14950
    .local v0, parent:Landroid/view/View;
    :goto_1
    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 14951
    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #parent:Landroid/view/View;
    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 14954
    goto :goto_0
.end method

.method public getRotation()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9140
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotationX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9238
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRotationY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9187
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9290
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9333
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getScrollBarDefaultDelayBeforeFade()I
    .locals 1

    .prologue
    .line 11242
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    goto :goto_0
.end method

.method public getScrollBarFadeDuration()I
    .locals 1

    .prologue
    .line 11266
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    goto :goto_0
.end method

.method public getScrollBarSize()I
    .locals 1

    .prologue
    .line 11290
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget v0, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    goto :goto_0
.end method

.method public getScrollBarStyle()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1000000
                to = "INSIDE_INSET"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2000000
                to = "OUTSIDE_OVERLAY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3000000
                to = "OUTSIDE_INSET"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 11349
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const/high16 v1, 0x300

    and-int/2addr v0, v1

    return v0
.end method

.method public final getScrollX()I
    .locals 1

    .prologue
    .line 8820
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method public final getScrollY()I
    .locals 1

    .prologue
    .line 8831
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 13938
    const/4 v0, 0x0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 2

    .prologue
    .line 15684
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mMinHeight:I

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 2

    .prologue
    .line 15700
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mMinWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mMinWidth:I

    iget-object v1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 16020
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 15238
    iget-object v0, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 15281
    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mKeyedTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 15282
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextAlignment()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "GRAVITY"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "TEXT_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "TEXT_END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "VIEW_START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "VIEW_END"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 16814
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, 0xe000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xd

    return v0
.end method

.method public getTextDirection()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "INHERIT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "FIRST_STRONG"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "ANY_RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LTR"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "RTL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "LOCALE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 16631
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x1c0

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final getTop()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 9567
    iget v0, p0, Landroid/view/View;->mTop:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 11089
    invoke-virtual {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .prologue
    .line 13203
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchDelegate()Landroid/view/TouchDelegate;
    .locals 1

    .prologue
    .line 8544
    iget-object v0, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    return-object v0
.end method

.method public getTouchables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6383
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0, v0}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6384
    return-object v0
.end method

.method public getTranslationX()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9887
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranslationY()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9929
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 2

    .prologue
    .line 3878
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3879
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3880
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3881
    iget v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3884
    .end local v0           #cache:Landroid/view/View$ScrollabilityCache;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getVerticalScrollFactor()F
    .locals 4

    .prologue
    .line 16584
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 16585
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 16586
    .local v0, outValue:Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16588
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16591
    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    .line 16594
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_1
    iget v1, p0, Landroid/view/View;->mVerticalScrollFactor:F

    return v1
.end method

.method public getVerticalScrollbarPosition()I
    .locals 1

    .prologue
    .line 4072
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3927
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3928
    .local v0, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v0, :cond_0

    .line 3929
    iget-object v1, v0, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3930
    .local v1, scrollBar:Landroid/widget/ScrollBarDrawable;
    if-eqz v1, :cond_0

    .line 3931
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v2

    .line 3932
    .local v2, size:I
    if-gtz v2, :cond_0

    .line 3933
    iget v2, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 3939
    .end local v1           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v2           #size:I
    :cond_0
    return v2
.end method

.method public getViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    .prologue
    .line 10692
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 10693
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 10695
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    .prologue
    .line 14926
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 14927
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 14932
    :goto_0
    return-object v0

    .line 14929
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_1

    .line 14930
    new-instance v0, Landroid/view/ViewTreeObserver;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver;-><init>()V

    iput-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    .line 14932
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mFloatingTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "VISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "INVISIBLE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "GONE"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 5649
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public final getWidth()I
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 8841
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getWindowAttachCount()I
    .locals 1

    .prologue
    .line 12011
    iget v0, p0, Landroid/view/View;->mWindowAttachCount:I

    return v0
.end method

.method getWindowSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 12051
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowSystemUiVisibility()I
    .locals 1

    .prologue
    .line 16030
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 12020
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowVisibility()I
    .locals 1

    .prologue
    .line 7721
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "outRect"

    .prologue
    .line 7741
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_0

    .line 7743
    :try_start_0
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    invoke-interface {v3, v4, p1}, Landroid/view/IWindowSession;->getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7750
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 7751
    .local v2, insets:Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 7752
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 7753
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 7754
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 7759
    .end local v2           #insets:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 7744
    :catch_0
    move-exception v1

    .line 7745
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 7757
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 7758
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getX()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9840
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getY()F
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9863
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v1, v0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hackTurnOffWindowResizeAnim(Z)V
    .locals 1
    .parameter "off"

    .prologue
    .line 17304
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    .line 17305
    return-void
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 4398
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 4399
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4401
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4402
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p0}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 4405
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4406
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4408
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4409
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 4412
    :cond_1
    return-void
.end method

.method public hasFocus()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 4538
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 4554
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasHoveredChild()Z
    .locals 1

    .prologue
    .line 7485
    const/4 v0, 0x0

    return v0
.end method

.method final hasIdentityMatrix()Z
    .locals 1

    .prologue
    .line 8965
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    .line 8966
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 8967
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v0

    .line 8969
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasOnClickListeners()Z
    .locals 2

    .prologue
    .line 4185
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4186
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasOpaqueScrollbars()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 10672
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 9491
    const/4 v0, 0x1

    return v0
.end method

.method hasStaticLayer()Z
    .locals 1

    .prologue
    .line 12388
    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    .line 5888
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 7622
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public includeForAccessibility()Z
    .locals 1

    .prologue
    .line 6846
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 6847
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mIncludeNotImportantViews:Z

    if-nez v0, :cond_0

    .line 6848
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    .line 6852
    :goto_0
    return v0

    .line 6850
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 6852
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initializeFadingEdge(Landroid/content/res/TypedArray;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 3862
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3864
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    const/16 v1, 0x18

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3867
    return-void
.end method

.method protected initializeScrollbars(Landroid/content/res/TypedArray;)V
    .locals 9
    .parameter "a"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3976
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3978
    iget-object v2, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 3980
    .local v2, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    if-nez v5, :cond_0

    .line 3981
    new-instance v5, Landroid/widget/ScrollBarDrawable;

    invoke-direct {v5}, Landroid/widget/ScrollBarDrawable;-><init>()V

    iput-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 3984
    :cond_0
    const/16 v5, 0x2c

    invoke-virtual {p1, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 3986
    .local v1, fadeScrollbars:Z
    if-nez v1, :cond_1

    .line 3987
    iput v7, v2, Landroid/view/View$ScrollabilityCache;->state:I

    .line 3989
    :cond_1
    iput-boolean v1, v2, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 3992
    const/16 v5, 0x2a

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 3995
    const/16 v5, 0x2b

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 4000
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledScrollBarSize()I

    move-result v5

    invoke-virtual {p1, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 4004
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4005
    .local v4, track:Landroid/graphics/drawable/Drawable;
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4007
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4008
    .local v3, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 4009
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4012
    :cond_2
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 4014
    .local v0, alwaysDraw:Z
    if-eqz v0, :cond_3

    .line 4015
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawHorizontalTrack(Z)V

    .line 4018
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 4019
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v4}, Landroid/widget/ScrollBarDrawable;->setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4021
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4022
    if-eqz v3, :cond_4

    .line 4023
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollBarDrawable;->setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4026
    :cond_4
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 4028
    if-eqz v0, :cond_5

    .line 4029
    iget-object v5, v2, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v5, v7}, Landroid/widget/ScrollBarDrawable;->setAlwaysDrawVerticalTrack(Z)V

    .line 4033
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 4034
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 10491
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 10492
    return-void
.end method

.method public invalidate(IIII)V
    .locals 9
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x8000

    .line 10454
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10482
    :cond_0
    :goto_0
    return-void

    .line 10457
    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_0

    .line 10460
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10461
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10462
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10463
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10464
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10474
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-ge p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    .line 10475
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 10476
    .local v2, scrollX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 10477
    .local v3, scrollY:I
    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10478
    .local v4, tmpr:Landroid/graphics/Rect;
    sub-int v5, p1, v2

    sub-int v6, p2, v3

    sub-int v7, p3, v2

    sub-int v8, p4, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10479
    invoke-interface {v1, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 9
    .parameter "dirty"

    .prologue
    const v8, 0x8000

    const/high16 v7, -0x8000

    .line 10411
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10440
    :cond_0
    :goto_0
    return-void

    .line 10414
    :cond_1
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v8

    if-eq v5, v8, :cond_2

    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v7

    if-eq v5, v7, :cond_0

    .line 10417
    :cond_2
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const v6, -0x8001

    and-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10418
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v5, v7

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10419
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x20

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10420
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10421
    .local v1, p:Landroid/view/ViewParent;
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10431
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 10432
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 10433
    .local v3, scrollX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 10434
    .local v4, scrollY:I
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10435
    .local v2, r:Landroid/graphics/Rect;
    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v3

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10437
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method invalidate(Z)V
    .locals 8
    .parameter "invalidateCache"

    .prologue
    const v7, 0x8000

    const/4 v6, 0x0

    const/high16 v5, -0x8000

    .line 10506
    invoke-direct {p0}, Landroid/view/View;->skipInvalidate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10539
    :cond_0
    :goto_0
    return-void

    .line 10509
    :cond_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    if-eqz p1, :cond_2

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    if-eq v3, v7, :cond_3

    :cond_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iget-boolean v4, p0, Landroid/view/View;->mLastIsOpaque:Z

    if-eq v3, v4, :cond_0

    .line 10512
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/View;->mLastIsOpaque:Z

    .line 10513
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10514
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v4, 0x20

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10515
    if-eqz p1, :cond_4

    .line 10516
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10517
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10519
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10520
    .local v0, ai:Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10531
    .local v1, p:Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 10532
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10533
    .local v2, r:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 10536
    invoke-interface {v1, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "drawable"

    .prologue
    .line 14207
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14208
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 14209
    .local v0, dirty:Landroid/graphics/Rect;
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 14210
    .local v1, scrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 14212
    .local v2, scrollY:I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 14215
    .end local v0           #dirty:Landroid/graphics/Rect;
    .end local v1           #scrollX:I
    .end local v2           #scrollY:I
    :cond_0
    return-void
.end method

.method protected invalidateParentCaches()V
    .locals 3

    .prologue
    .line 10606
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10607
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 10609
    :cond_0
    return-void
.end method

.method protected invalidateParentIfNeeded()V
    .locals 2

    .prologue
    .line 10621
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 10622
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 10624
    :cond_0
    return-void
.end method

.method invalidateViewProperty(ZZ)V
    .locals 7
    .parameter "invalidateParent"
    .parameter "forceRedraw"

    .prologue
    const/4 v6, 0x0

    .line 10558
    iget-object v3, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 10559
    :cond_0
    if-eqz p1, :cond_1

    .line 10560
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10562
    :cond_1
    if-eqz p2, :cond_2

    .line 10563
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 10565
    :cond_2
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 10579
    :cond_3
    :goto_0
    return-void

    .line 10567
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10568
    .local v0, ai:Landroid/view/View$AttachInfo;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10569
    .local v1, p:Landroid/view/ViewParent;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 10570
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10571
    .local v2, r:Landroid/graphics/Rect;
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v5, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 10572
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 10573
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0, v2}, Landroid/view/ViewGroup;->invalidateChildFast(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 10575
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0, v2}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public isAccessibilityFocusable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6787
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v4, 0x6000

    and-int/2addr v3, v4

    ushr-int/lit8 v0, v3, 0x1d

    .line 6789
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 6798
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow accessibility focusable mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move v1, v2

    .line 6795
    :cond_0
    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    invoke-direct {p0}, Landroid/view/View;->canTakeAccessibilityFocusFromHover()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 6789
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isAccessibilityFocused()Z
    .locals 2

    .prologue
    .line 6408
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionableForAccessibility()Z
    .locals 1

    .prologue
    .line 6865
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

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

.method public isActivated()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 14910
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 5985
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    .line 9643
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x60

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawingCacheEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 12576
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicateParentStateEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 12304
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 5672
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusable()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6181
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFocusableInTouchMode()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x4

    .line 6194
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
    .end annotation

    .prologue
    .line 5257
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHapticFeedbackEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x1000

    .line 5793
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 13256
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 11016
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 11146
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHovered()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 8272
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isHoveringUIEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 18325
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    .line 18326
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit8 v0, v0, -0x10

    sput v0, Landroid/view/View;->sHoverUIEnableFlag:I

    .line 18327
    sget v2, Landroid/view/View;->sHoverUIEnableFlag:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v2

    sput v0, Landroid/view/View;->sHoverUIEnableFlag:I

    .line 18331
    :cond_0
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    .line 18327
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 18331
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isImportantForAccessibility()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6720
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v4, 0x30

    and-int/2addr v3, v4

    shr-int/lit8 v0, v3, 0x14

    .line 6722
    .local v0, mode:I
    packed-switch v0, :pswitch_data_0

    .line 6730
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow important for accessibility mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move v1, v2

    .line 6728
    :cond_0
    :goto_0
    :pswitch_1
    return v1

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->isActionableForAccessibility()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Landroid/view/View;->hasListenersForAccessibility()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 6722
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 13139
    const/4 v0, 0x0

    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .prologue
    .line 8457
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8458
    .local v0, p:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 8459
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8460
    const/4 v1, 0x1

    .line 8464
    :goto_1
    return v1

    .line 8462
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 8464
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isInTouchMode()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 7827
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 7828
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 7830
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method public isLayoutRequested()Z
    .locals 2

    .prologue
    .line 14041
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 5871
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 6012
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x180

    .line 10639
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    :goto_0
    const v1, 0x3f7aaaab

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .prologue
    .line 13161
    const/4 v0, 0x0

    return v0
.end method

.method public isPaddingRelative()Z
    .locals 1

    .prologue
    .line 14810
    iget-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    return v0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 6075
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRootNamespace()Z
    .locals 1

    .prologue
    .line 15210
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 6088
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveFromParentEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2000

    .line 6152
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollContainer()Z
    .locals 2

    .prologue
    .line 5281
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollbarFadingEnabled()Z
    .locals 1

    .prologue
    .line 11230
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iget-boolean v0, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 14868
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5480
    move-object v0, p0

    .line 5483
    .local v0, current:Landroid/view/View;
    :cond_0
    iget v3, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_2

    .line 5496
    :cond_1
    :goto_0
    return v2

    .line 5486
    :cond_2
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 5487
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_1

    .line 5490
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_3

    .line 5491
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 5493
    check-cast v0, Landroid/view/View;

    .line 5494
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public isSoundEffectsEnabled()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/high16 v1, 0x800

    .line 5764
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTextSelectionEnabled()Z
    .locals 4

    .prologue
    const/16 v1, 0x10

    .line 18335
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit16 v0, v0, 0xf0

    if-nez v0, :cond_0

    .line 18336
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit16 v0, v0, -0xf1

    sput v0, Landroid/view/View;->sHoverUIEnableFlag:I

    .line 18337
    sget v2, Landroid/view/View;->sHoverUIEnableFlag:I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v2

    sput v0, Landroid/view/View;->sHoverUIEnableFlag:I

    .line 18341
    :cond_0
    sget v0, Landroid/view/View;->sHoverUIEnableFlag:I

    and-int/lit16 v0, v0, 0xf0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 18337
    :cond_1
    const/16 v0, 0x20

    goto :goto_0

    .line 18341
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isVerticalFadingEdgeEnabled()Z
    .locals 2

    .prologue
    .line 11053
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 2

    .prologue
    .line 11176
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 11661
    const/4 v0, 0x0

    return v0
.end method

.method protected isVisibleToUser()Z
    .locals 1

    .prologue
    .line 5076
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected isVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 5
    .parameter "boundInView"

    .prologue
    .line 5096
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v3, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 5097
    .local v2, visibleRect:Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v3, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    .line 5102
    .local v1, offset:Landroid/graphics/Point;
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 5107
    .local v0, isVisible:Z
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5108
    iget v3, v1, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 5109
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 5111
    :cond_0
    return v0

    .line 5102
    .end local v0           #isVisible:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 14464
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 14465
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 14467
    :cond_0
    return-void
.end method

.method public layout(IIII)V
    .locals 17
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 14066
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mLeft:I

    .line 14067
    .local v9, oldL:I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mTop:I

    .line 14068
    .local v10, oldT:I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mBottom:I

    .line 14069
    .local v12, oldB:I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mRight:I

    .line 14070
    .local v11, oldR:I
    invoke-virtual/range {p0 .. p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v2

    .line 14071
    .local v2, changed:Z
    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_1

    :cond_0
    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 14072
    invoke-virtual/range {v1 .. v6}, Landroid/view/View;->onLayout(ZIIII)V

    .line 14073
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x2001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14075
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 14076
    .local v14, li:Landroid/view/View$ListenerInfo;
    if-eqz v14, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 14077
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v14}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 14079
    .local v15, listenersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 14080
    .local v16, numListeners:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    .line 14081
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-interface/range {v3 .. v12}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    .line 14080
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 14085
    .end local v13           #i:I
    .end local v14           #li:Landroid/view/View$ListenerInfo;
    .end local v15           #listenersCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View$OnLayoutChangeListener;>;"
    .end local v16           #numListeners:I
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x1001

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 14086
    return-void
.end method

.method public makeOptionalFitsSystemWindows()V
    .locals 1

    .prologue
    const/16 v0, 0x800

    .line 5634
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setFlags(II)V

    .line 5635
    return-void
.end method

.method public final measure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 15496
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    if-eq p2, v0, :cond_2

    .line 15501
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15504
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 15508
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    .line 15509
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onMeasure() did not set the measured dimension by calling setMeasuredDimension()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15514
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15517
    :cond_2
    iput p1, p0, Landroid/view/View;->mOldWidthMeasureSpec:I

    .line 15518
    iput p2, p0, Landroid/view/View;->mOldHeightMeasureSpec:I

    .line 15519
    return-void
.end method

.method needGlobalAttributesUpdate(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 7809
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 7810
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 7811
    if-nez p1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-nez v1, :cond_0

    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    if-eqz v1, :cond_1

    .line 7813
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 7816
    :cond_1
    return-void
.end method

.method public notifyAccessibilityStateChanged()V
    .locals 2

    .prologue
    const/high16 v1, 0x800

    .line 6896
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6905
    :cond_0
    :goto_0
    return-void

    .line 6899
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 6900
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6901
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 6902
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childAccessibilityStateChanged(Landroid/view/View;)V

    goto :goto_0
.end method

.method public offsetLeftAndRight(I)V
    .locals 10
    .parameter "offset"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10111
    if-eqz p1, :cond_2

    .line 10112
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10113
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v0, v6

    .line 10115
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_6

    .line 10116
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v7, :cond_4

    .line 10117
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10139
    :cond_1
    :goto_1
    iget v7, p0, Landroid/view/View;->mLeft:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mLeft:I

    .line 10140
    iget v7, p0, Landroid/view/View;->mRight:I

    add-int/2addr v7, p1

    iput v7, p0, Landroid/view/View;->mRight:I

    .line 10141
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v7, :cond_7

    .line 10142
    iget-object v6, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v6, p1}, Landroid/view/DisplayList;->offsetLeftRight(I)V

    .line 10143
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10151
    .end local v0           #matrixIsIdentity:Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v5

    .line 10113
    goto :goto_0

    .line 10119
    .restart local v0       #matrixIsIdentity:Z
    :cond_4
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10120
    .local v3, p:Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 10121
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v7, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10124
    .local v4, r:Landroid/graphics/Rect;
    if-gez p1, :cond_5

    .line 10125
    iget v7, p0, Landroid/view/View;->mLeft:I

    add-int v2, v7, p1

    .line 10126
    .local v2, minLeft:I
    iget v1, p0, Landroid/view/View;->mRight:I

    .line 10131
    .local v1, maxRight:I
    :goto_3
    sub-int v7, v1, v2

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 10132
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 10128
    .end local v1           #maxRight:I
    .end local v2           #minLeft:I
    :cond_5
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 10129
    .restart local v2       #minLeft:I
    iget v7, p0, Landroid/view/View;->mRight:I

    add-int v1, v7, p1

    .restart local v1       #maxRight:I
    goto :goto_3

    .line 10136
    .end local v1           #maxRight:I
    .end local v2           #minLeft:I
    .end local v3           #p:Landroid/view/ViewParent;
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_6
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_1

    .line 10145
    :cond_7
    if-nez v0, :cond_8

    .line 10146
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10148
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_2
.end method

.method public offsetTopAndBottom(I)V
    .locals 10
    .parameter "offset"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10060
    if-eqz p1, :cond_2

    .line 10061
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 10062
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v8}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    move v0, v7

    .line 10064
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_6

    .line 10065
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_4

    .line 10066
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10091
    :cond_1
    :goto_1
    iget v8, p0, Landroid/view/View;->mTop:I

    add-int/2addr v8, p1

    iput v8, p0, Landroid/view/View;->mTop:I

    .line 10092
    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v8, p1

    iput v8, p0, Landroid/view/View;->mBottom:I

    .line 10093
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_7

    .line 10094
    iget-object v7, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v7, p1}, Landroid/view/DisplayList;->offsetTopBottom(I)V

    .line 10095
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10103
    .end local v0           #matrixIsIdentity:Z
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v6

    .line 10062
    goto :goto_0

    .line 10068
    .restart local v0       #matrixIsIdentity:Z
    :cond_4
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 10069
    .local v3, p:Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_1

    .line 10070
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v8, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 10074
    .local v4, r:Landroid/graphics/Rect;
    if-gez p1, :cond_5

    .line 10075
    iget v8, p0, Landroid/view/View;->mTop:I

    add-int v2, v8, p1

    .line 10076
    .local v2, minTop:I
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 10077
    .local v1, maxBottom:I
    move v5, p1

    .line 10083
    .local v5, yLoc:I
    :goto_3
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v8, v9

    sub-int v9, v1, v2

    invoke-virtual {v4, v6, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 10084
    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 10079
    .end local v1           #maxBottom:I
    .end local v2           #minTop:I
    .end local v5           #yLoc:I
    :cond_5
    iget v2, p0, Landroid/view/View;->mTop:I

    .line 10080
    .restart local v2       #minTop:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    add-int v1, v8, p1

    .line 10081
    .restart local v1       #maxBottom:I
    const/4 v5, 0x0

    .restart local v5       #yLoc:I
    goto :goto_3

    .line 10088
    .end local v1           #maxBottom:I
    .end local v2           #minTop:I
    .end local v3           #p:Landroid/view/ViewParent;
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v5           #yLoc:I
    :cond_6
    invoke-virtual {p0, v6, v6}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto :goto_1

    .line 10097
    :cond_7
    if-nez v0, :cond_8

    .line 10098
    invoke-virtual {p0, v6, v7}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 10100
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    goto :goto_2
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 15844
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15845
    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .prologue
    .line 15832
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15833
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 11737
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    .line 11738
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 11741
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x800

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 11742
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 11743
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x8000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11746
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 11750
    invoke-virtual {p0}, Landroid/view/View;->resolveLayoutDirection()V

    .line 11751
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11752
    invoke-virtual {p0}, Landroid/view/View;->resolveTextDirection()V

    .line 11753
    invoke-virtual {p0}, Landroid/view/View;->resolveTextAlignment()V

    .line 11755
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 11756
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11757
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 11758
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 11761
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_3

    .line 11762
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->dequeueDisplayList(Landroid/view/DisplayList;)V

    .line 11764
    :cond_3
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 7998
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 16374
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 7785
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 8084
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 8
    .parameter "extraSpace"

    .prologue
    const/high16 v7, 0x40

    const/4 v6, 0x0

    .line 14374
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 14376
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 14429
    :cond_0
    :goto_0
    return-object v0

    .line 14381
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14383
    .local v2, privateFlags:I
    const/4 v4, 0x0

    .line 14384
    .local v4, viewStateIndex:I
    and-int/lit16 v5, v2, 0x4000

    if-eqz v5, :cond_2

    or-int/lit8 v4, v4, 0x10

    .line 14385
    :cond_2
    iget v5, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0x20

    if-nez v5, :cond_3

    or-int/lit8 v4, v4, 0x8

    .line 14386
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x4

    .line 14387
    :cond_4
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_5

    or-int/lit8 v4, v4, 0x2

    .line 14388
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v5

    if-eqz v5, :cond_6

    or-int/lit8 v4, v4, 0x1

    .line 14389
    :cond_6
    const/high16 v5, 0x4000

    and-int/2addr v5, v2

    if-eqz v5, :cond_7

    or-int/lit8 v4, v4, 0x20

    .line 14390
    :cond_7
    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v5, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    if-eqz v5, :cond_8

    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 14395
    or-int/lit8 v4, v4, 0x40

    .line 14397
    :cond_8
    const/high16 v5, 0x1000

    and-int/2addr v5, v2

    if-eqz v5, :cond_9

    or-int/lit16 v4, v4, 0x80

    .line 14399
    :cond_9
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 14400
    .local v3, privateFlags2:I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_a

    or-int/lit16 v4, v4, 0x100

    .line 14401
    :cond_a
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_b

    or-int/lit16 v4, v4, 0x200

    .line 14403
    :cond_b
    sget-object v5, Landroid/view/View;->VIEW_STATE_SETS:[[I

    aget-object v0, v5, v4

    .line 14417
    .local v0, drawableState:[I
    if-eqz p1, :cond_0

    .line 14422
    if-eqz v0, :cond_c

    .line 14423
    array-length v5, v0

    add-int/2addr v5, p1

    new-array v1, v5, [I

    .line 14424
    .local v1, fullState:[I
    array-length v5, v0

    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    move-object v0, v1

    .line 14429
    goto :goto_0

    .line 14426
    .end local v1           #fullState:[I
    :cond_c
    new-array v1, p1, [I

    .restart local v1       #fullState:[I
    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter "outAttrs"

    .prologue
    .line 8014
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11973
    iget v0, p0, Landroid/view/View;->mHoverPopupType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_0

    .line 11974
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 11975
    iput-object v2, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    .line 11979
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 11981
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 11982
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 11983
    invoke-direct {p0}, Landroid/view/View;->removePerformClickCallback()V

    .line 11984
    invoke-direct {p0}, Landroid/view/View;->removeSendViewScrolledAccessibilityEventCallback()V

    .line 11986
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 11988
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 11990
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    .line 11991
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_1

    .line 11992
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->enqueueDisplayList(Landroid/view/DisplayList;)V

    .line 11994
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->cancelInvalidate(Landroid/view/View;)V

    .line 12000
    :goto_0
    iput-object v2, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 12002
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 12003
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 12004
    invoke-virtual {p0}, Landroid/view/View;->resetAccessibilityStateChanged()V

    .line 12005
    return-void

    .line 11997
    :cond_2
    invoke-direct {p0}, Landroid/view/View;->clearDisplayList()V

    goto :goto_0
.end method

.method protected onDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 7684
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 16335
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 11710
    return-void
.end method

.method protected onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 11680
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11681
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11682
    return-void
.end method

.method protected final onDrawScrollBars(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 11520
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 11521
    .local v9, cache:Landroid/view/View$ScrollabilityCache;
    if-eqz v9, :cond_0

    .line 11523
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->state:I

    move/from16 v18, v0

    .line 11525
    .local v18, state:I
    if-nez v18, :cond_1

    .line 11636
    .end local v18           #state:I
    :cond_0
    :goto_0
    return-void

    .line 11529
    .restart local v18       #state:I
    :cond_1
    const/4 v14, 0x0

    .line 11531
    .local v14, invalidate:Z
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_9

    .line 11533
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    if-nez v2, :cond_2

    .line 11534
    const/4 v2, 0x1

    new-array v2, v2, [F

    iput-object v2, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    .line 11537
    :cond_2
    iget-object v0, v9, Landroid/view/View$ScrollabilityCache;->interpolatorValues:[F

    move-object/from16 v19, v0

    .line 11540
    .local v19, values:[F
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBarInterpolator:Landroid/graphics/Interpolator;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Interpolator;->timeToValues([F)Landroid/graphics/Interpolator$Result;

    move-result-object v2

    sget-object v3, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    if-ne v2, v3, :cond_8

    .line 11542
    const/4 v2, 0x0

    iput v2, v9, Landroid/view/View$ScrollabilityCache;->state:I

    .line 11550
    :goto_1
    const/4 v14, 0x1

    .line 11558
    .end local v19           #values:[F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v21, v0

    .line 11560
    .local v21, viewFlags:I
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a

    const/4 v10, 0x1

    .line 11562
    .local v10, drawHorizontalScrollBar:Z
    :goto_3
    move/from16 v0, v21

    and-int/lit16 v2, v0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isVerticalScrollBarHidden()Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v11, 0x1

    .line 11566
    .local v11, drawVerticalScrollBar:Z
    :goto_4
    if-nez v11, :cond_3

    if-eqz v10, :cond_0

    .line 11567
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int v22, v2, v3

    .line 11568
    .local v22, width:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mTop:I

    sub-int v12, v2, v3

    .line 11570
    .local v12, height:I
    iget-object v4, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    .line 11572
    .local v4, scrollBar:Landroid/widget/ScrollBarDrawable;
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/View;->mScrollX:I

    .line 11573
    .local v15, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    .line 11574
    .local v16, scrollY:I
    const/high16 v2, 0x200

    and-int v2, v2, v21

    if-nez v2, :cond_c

    const/4 v13, -0x1

    .line 11578
    .local v13, inside:I
    :goto_5
    if-eqz v10, :cond_5

    .line 11579
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 11580
    .local v17, size:I
    if-gtz v17, :cond_4

    .line 11581
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 11584
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v23

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 11587
    if-eqz v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v20

    .line 11589
    .local v20, verticalScrollBarGap:I
    :goto_6
    add-int v2, v16, v12

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v6, v2, v3

    .line 11590
    .local v6, top:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .line 11591
    .local v5, left:I
    add-int v2, v15, v22

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int/2addr v2, v3

    sub-int v7, v2, v20

    .line 11592
    .local v7, right:I
    add-int v8, v6, v17

    .local v8, bottom:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 11593
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawHorizontalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 11594
    if-eqz v14, :cond_5

    .line 11595
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 11599
    .end local v5           #left:I
    .end local v6           #top:I
    .end local v7           #right:I
    .end local v8           #bottom:I
    .end local v17           #size:I
    .end local v20           #verticalScrollBarGap:I
    :cond_5
    if-eqz v11, :cond_0

    .line 11600
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/ScrollBarDrawable;->getSize(Z)I

    move-result v17

    .line 11601
    .restart local v17       #size:I
    if-gtz v17, :cond_6

    .line 11602
    iget v0, v9, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    move/from16 v17, v0

    .line 11605
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/ScrollBarDrawable;->setParameters(IIIZ)V

    .line 11608
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mVerticalScrollbarPosition:I

    packed-switch v2, :pswitch_data_0

    .line 11612
    add-int v2, v15, v22

    sub-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingRight:I

    and-int/2addr v3, v13

    sub-int v5, v2, v3

    .line 11618
    .restart local v5       #left:I
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingTop:I

    and-int/2addr v2, v13

    add-int v6, v16, v2

    .line 11619
    .restart local v6       #top:I
    add-int v7, v5, v17

    .line 11620
    .restart local v7       #right:I
    add-int v2, v16, v12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mUserPaddingBottom:I

    and-int/2addr v3, v13

    sub-int v8, v2, v3

    .line 11623
    .restart local v8       #bottom:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/View;->mNeededToChangedScrollBarPosition:Z

    if-eqz v2, :cond_7

    .line 11624
    sget v2, Landroid/view/View;->mScrollBarPositionPadding:I

    sub-int/2addr v5, v2

    .line 11625
    sget v2, Landroid/view/View;->mScrollBarPositionPadding:I

    sub-int/2addr v7, v2

    .line 11626
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/ScrollBarDrawable;->setBounds(IIII)V

    :cond_7
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 11629
    invoke-virtual/range {v2 .. v8}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 11630
    if-eqz v14, :cond_0

    .line 11631
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 11544
    .end local v4           #scrollBar:Landroid/widget/ScrollBarDrawable;
    .end local v5           #left:I
    .end local v6           #top:I
    .end local v7           #right:I
    .end local v8           #bottom:I
    .end local v10           #drawHorizontalScrollBar:Z
    .end local v11           #drawVerticalScrollBar:Z
    .end local v12           #height:I
    .end local v13           #inside:I
    .end local v15           #scrollX:I
    .end local v16           #scrollY:I
    .end local v17           #size:I
    .end local v21           #viewFlags:I
    .end local v22           #width:I
    .restart local v19       #values:[F
    :cond_8
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/4 v3, 0x0

    aget v3, v19, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 11554
    .end local v19           #values:[F
    :cond_9
    iget-object v2, v9, Landroid/view/View$ScrollabilityCache;->scrollBar:Landroid/widget/ScrollBarDrawable;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/widget/ScrollBarDrawable;->setAlpha(I)V

    goto/16 :goto_2

    .line 11560
    .restart local v21       #viewFlags:I
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 11562
    .restart local v10       #drawHorizontalScrollBar:Z
    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 11574
    .restart local v4       #scrollBar:Landroid/widget/ScrollBarDrawable;
    .restart local v11       #drawVerticalScrollBar:Z
    .restart local v12       #height:I
    .restart local v15       #scrollX:I
    .restart local v16       #scrollY:I
    .restart local v22       #width:I
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 11587
    .restart local v13       #inside:I
    .restart local v17       #size:I
    :cond_d
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 11615
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mUserPaddingLeft:I

    and-int/2addr v2, v13

    add-int v5, v15, v2

    .restart local v5       #left:I
    goto :goto_7

    .line 11608
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 11700
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11701
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11702
    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 7371
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7374
    const/4 v0, 0x0

    .line 7376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 14190
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .prologue
    .line 7184
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 4576
    if-eqz p1, :cond_0

    .line 4577
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4578
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4582
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4583
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_6

    .line 4584
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4585
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4587
    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_2

    .line 4589
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 4591
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 4597
    :cond_3
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 4598
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4599
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v2, :cond_4

    .line 4600
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 4603
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_5

    .line 4604
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2, p0}, Landroid/view/KeyEvent$DispatcherState;->reset(Ljava/lang/Object;)V

    .line 4606
    :cond_5
    return-void

    .line 4592
    .end local v1           #li:Landroid/view/View$ListenerInfo;
    :cond_6
    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_3

    .line 4594
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onFocusLost()V
    .locals 0

    .prologue
    .line 5233
    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 5234
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 8140
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverChanged(Z)V
    .locals 0
    .parameter "hovered"

    .prologue
    .line 8319
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8184
    .local v0, action:I
    iget-boolean v3, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    if-nez v3, :cond_3

    .line 8185
    if-eq v0, v8, :cond_0

    if-ne v0, v7, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasHoveredChild()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8189
    const/16 v3, 0x80

    invoke-direct {p0, v3}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    .line 8190
    iput-boolean v1, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 8207
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    iget v3, p0, Landroid/view/View;->mHoverPopupType:I

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/HoverPopupWindow;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8209
    if-ne v0, v8, :cond_5

    .line 8212
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 8213
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mHoverPopupType:I

    invoke-virtual {v3, v4}, Landroid/widget/HoverPopupWindow;->show(I)V

    .line 8222
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/view/View;->isHoverable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 8223
    packed-switch v0, :pswitch_data_0

    .line 8239
    :goto_2
    invoke-direct {p0, p1}, Landroid/view/View;->dispatchGenericMotionEventInternal(Landroid/view/MotionEvent;)Z

    .line 8243
    :goto_3
    return v1

    .line 8193
    :cond_3
    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    if-ne v0, v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->pointInView(FF)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8196
    :cond_4
    iput-boolean v2, p0, Landroid/view/View;->mSendingHoverAccessibilityEvents:Z

    .line 8197
    const/16 v3, 0x100

    invoke-direct {p0, v3}, Landroid/view/View;->sendAccessibilityHoverEvent(I)V

    .line 8200
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-nez v3, :cond_1

    .line 8201
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    .line 8214
    :cond_5
    if-eq v0, v7, :cond_2

    .line 8216
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 8217
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_1

    .line 8225
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setHovered(Z)V

    goto :goto_2

    .line 8228
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setHovered(Z)V

    goto :goto_2

    :cond_6
    move v1, v2

    .line 8243
    goto :goto_3

    .line 8223
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4831
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4832
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4836
    :goto_0
    return-void

    .line 4834
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 4844
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 4845
    const-class v1, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 4846
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4847
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 4848
    iget-object v1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4850
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    .line 4851
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTempArrayList:Ljava/util/ArrayList;

    .line 4852
    .local v0, focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 4854
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 4855
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 4856
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4858
    .end local v0           #focusablesTempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 4918
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4919
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4923
    :goto_0
    return-void

    .line 4921
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 4976
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v3, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 4977
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 4978
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 4980
    invoke-direct {p0, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 4981
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 4983
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v2

    .line 4984
    .local v2, parent:Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 4985
    check-cast v2, Landroid/view/View;

    .end local v2           #parent:Landroid/view/ViewParent;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 4988
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 4990
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 4991
    const-class v3, Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 4992
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4994
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 4995
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 4996
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 4997
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 4998
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 4999
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 5000
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 5005
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5006
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5008
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5009
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5010
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5016
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-nez v3, :cond_8

    .line 5017
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityFocusable()I

    move-result v1

    .line 5018
    .local v1, mode:I
    if-eq v1, v4, :cond_2

    if-nez v1, :cond_3

    .line 5019
    :cond_2
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5025
    .end local v1           #mode:I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5026
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5029
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5030
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5033
    :cond_5
    iget-object v3, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 5034
    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5035
    const/16 v3, 0x200

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 5036
    const/16 v3, 0xb

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 5040
    :cond_6
    return-void

    .line 5012
    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 5022
    :cond_8
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v4, 0x20

    const/4 v1, 0x1

    .line 7876
    const/4 v0, 0x0

    .line 7878
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    .line 7895
    .end local v0           #result:Z
    :cond_0
    :goto_0
    return v0

    .line 7881
    .restart local v0       #result:Z
    :sswitch_0
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 7882
    goto :goto_0

    .line 7885
    :cond_1
    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 7888
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 7889
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/view/View;->checkForLongClick(I)V

    move v0, v1

    .line 7890
    goto :goto_0

    .line 7878
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7907
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 7962
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7858
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7977
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7924
    const/4 v0, 0x0

    .line 7926
    .local v0, result:Z
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v1, v0

    .line 7945
    :goto_1
    return v1

    .line 7929
    :sswitch_0
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 7930
    const/4 v1, 0x1

    goto :goto_1

    .line 7932
    :cond_1
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7933
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 7935
    iget-boolean v1, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v1, :cond_0

    .line 7937
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 7939
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_0

    .line 7926
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 14102
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 15568
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 15570
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 16543
    return-void
.end method

.method public onPaddingChanged(I)V
    .locals 0
    .parameter "layoutDirection"

    .prologue
    .line 11911
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4788
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4789
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4793
    :goto_0
    return-void

    .line 4791
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 4802
    return-void
.end method

.method public onResolvedLayoutDirectionChanged()V
    .locals 0

    .prologue
    .line 11844
    return-void
.end method

.method public onResolvedLayoutDirectionReset()V
    .locals 0

    .prologue
    .line 11951
    return-void
.end method

.method public onResolvedTextAlignmentChanged()V
    .locals 0

    .prologue
    .line 16967
    return-void
.end method

.method public onResolvedTextAlignmentReset()V
    .locals 0

    .prologue
    .line 16988
    return-void
.end method

.method public onResolvedTextDirectionChanged()V
    .locals 0

    .prologue
    .line 16752
    return-void
.end method

.method public onResolvedTextDirectionReset()V
    .locals 0

    .prologue
    .line 16787
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 12250
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12251
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 12252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state class, expecting View State but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instead. This usually happens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "when two views of different type have the same id in the same hierarchy. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "This view\'s id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/ViewDebug;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "other views do not use the same id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12258
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 12192
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12193
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onScreenStateChanged(I)V
    .locals 0
    .parameter "screenState"

    .prologue
    .line 11783
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v2, 0x1

    .line 8724
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8725
    invoke-direct {p0}, Landroid/view/View;->postSendViewScrolledAccessibilityEventCallback()V

    .line 8728
    :cond_0
    iput-boolean v2, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 8730
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 8731
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 8732
    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 8734
    :cond_1
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 15859
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 8769
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .prologue
    .line 7168
    invoke-direct {p0}, Landroid/view/View;->removeUnsetPressCallback()V

    .line 7169
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7170
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8328
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    .line 8330
    .local v3, viewFlags:I
    and-int/lit8 v8, v3, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_3

    .line 8331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v7, :cond_0

    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_0

    .line 8332
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 8336
    :cond_0
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_1

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2

    :cond_1
    move v6, v7

    .line 8450
    :cond_2
    :goto_0
    return v6

    .line 8340
    :cond_3
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v8, :cond_4

    .line 8341
    iget-object v8, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v8, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v7

    .line 8342
    goto :goto_0

    .line 8346
    :cond_4
    and-int/lit16 v8, v3, 0x4000

    if-eq v8, v12, :cond_5

    and-int v8, v3, v10

    if-ne v8, v10, :cond_2

    .line 8348
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_6
    :goto_1
    move v6, v7

    .line 8447
    goto :goto_0

    .line 8350
    :pswitch_0
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x200

    and-int/2addr v8, v9

    if-eqz v8, :cond_e

    move v2, v7

    .line 8351
    .local v2, prepressed:Z
    :goto_2
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    .line 8354
    :cond_7
    const/4 v0, 0x0

    .line 8355
    .local v0, focusTaken:Z
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-nez v6, :cond_8

    .line 8356
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 8359
    :cond_8
    if-eqz v2, :cond_9

    .line 8364
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 8367
    :cond_9
    iget-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    if-nez v6, :cond_b

    .line 8369
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8372
    if-nez v0, :cond_b

    .line 8376
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    if-nez v6, :cond_a

    .line 8377
    new-instance v6, Landroid/view/View$PerformClick;

    invoke-direct {v6, p0, v11}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    .line 8379
    :cond_a
    iget-object v6, p0, Landroid/view/View;->mPerformClick:Landroid/view/View$PerformClick;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 8380
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 8385
    :cond_b
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    if-nez v6, :cond_c

    .line 8386
    new-instance v6, Landroid/view/View$UnsetPressedState;

    invoke-direct {v6, p0, v11}, Landroid/view/View$UnsetPressedState;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    .line 8389
    :cond_c
    if-eqz v2, :cond_f

    .line 8390
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8396
    :cond_d
    :goto_3
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto :goto_1

    .end local v0           #focusTaken:Z
    .end local v2           #prepressed:Z
    :cond_e
    move v2, v6

    .line 8350
    goto :goto_2

    .line 8392
    .restart local v0       #focusTaken:Z
    .restart local v2       #prepressed:Z
    :cond_f
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 8394
    iget-object v6, p0, Landroid/view/View;->mUnsetPressedState:Landroid/view/View$UnsetPressedState;

    invoke-virtual {v6}, Landroid/view/View$UnsetPressedState;->run()V

    goto :goto_3

    .line 8401
    .end local v0           #focusTaken:Z
    .end local v2           #prepressed:Z
    :pswitch_1
    iput-boolean v6, p0, Landroid/view/View;->mHasPerformedLongPress:Z

    .line 8403
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 8408
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v1

    .line 8412
    .local v1, isInScrollingContainer:Z
    if-eqz v1, :cond_11

    .line 8413
    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v8, 0x200

    or-int/2addr v6, v8

    iput v6, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8414
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    if-nez v6, :cond_10

    .line 8415
    new-instance v6, Landroid/view/View$CheckForTap;

    invoke-direct {v6, p0, v11}, Landroid/view/View$CheckForTap;-><init>(Landroid/view/View;Landroid/view/View$1;)V

    iput-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    .line 8417
    :cond_10
    iget-object v6, p0, Landroid/view/View;->mPendingCheckForTap:Landroid/view/View$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 8420
    :cond_11
    invoke-virtual {p0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 8421
    invoke-direct {p0, v6}, Landroid/view/View;->checkForLongClick(I)V

    goto/16 :goto_1

    .line 8426
    .end local v1           #isInScrollingContainer:Z
    :pswitch_2
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 8427
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    goto/16 :goto_1

    .line 8431
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 8432
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 8435
    .local v5, y:I
    int-to-float v8, v4

    int-to-float v9, v5

    iget v10, p0, Landroid/view/View;->mTouchSlop:I

    int-to-float v10, v10

    invoke-direct {p0, v8, v9, v10}, Landroid/view/View;->pointInView(FFF)Z

    move-result v8

    if-nez v8, :cond_6

    .line 8437
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 8438
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_6

    .line 8440
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 8442
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_1

    .line 8348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 8099
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 7645
    if-nez p2, :cond_0

    .line 7646
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    .line 7647
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 7654
    :cond_0
    :goto_0
    iget v0, p0, Landroid/view/View;->mHoverPopupType:I

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 7655
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v0, :cond_1

    .line 7656
    iget-object v0, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 7659
    :cond_1
    return-void

    .line 7649
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x800

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 7588
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7589
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_4

    .line 7590
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7591
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 7593
    :cond_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7594
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusOut(Landroid/view/View;)V

    .line 7596
    :cond_1
    invoke-direct {p0}, Landroid/view/View;->removeLongPressCallback()V

    .line 7597
    invoke-direct {p0}, Landroid/view/View;->removeTapCallback()V

    .line 7598
    invoke-virtual {p0}, Landroid/view/View;->onFocusLost()V

    .line 7601
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 7602
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10000001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 7605
    :cond_2
    iget v1, p0, Landroid/view/View;->mHoverPopupType:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    if-eqz v1, :cond_3

    .line 7606
    iget-object v1, p0, Landroid/view/View;->mHoverPopup:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 7612
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 7613
    return-void

    .line 7609
    :cond_4
    if-eqz v0, :cond_3

    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 7610
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 16042
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 7709
    if-nez p1, :cond_0

    .line 7710
    invoke-direct {p0}, Landroid/view/View;->initialAwakenScrollBars()Z

    .line 7712
    :cond_0
    return-void
.end method

.method public outputDirtyFlags(Ljava/lang/String;ZI)V
    .locals 8
    .parameter "indent"
    .parameter "clear"
    .parameter "clearMask"

    .prologue
    .line 12587
    const-string v4, "View"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "             DIRTY("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x60

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") DRAWN("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CACHE_VALID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") INVALIDATED("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x8000

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12591
    if-eqz p2, :cond_0

    .line 12592
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, p3

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12594
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 12595
    check-cast v3, Landroid/view/ViewGroup;

    .line 12596
    .local v3, parent:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 12597
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12598
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 12599
    .local v0, child:Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2, p3}, Landroid/view/View;->outputDirtyFlags(Ljava/lang/String;ZI)V

    .line 12597
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12602
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 16
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scrollRangeX"
    .parameter "scrollRangeY"
    .parameter "maxOverScrollX"
    .parameter "maxOverScrollY"
    .parameter "isTouchEvent"

    .prologue
    .line 16482
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mOverScrollMode:I

    .line 16483
    .local v10, overScrollMode:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_7

    const/4 v2, 0x1

    .line 16485
    .local v2, canScrollHorizontal:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v15

    if-le v14, v15, :cond_8

    const/4 v3, 0x1

    .line 16487
    .local v3, canScrollVertical:Z
    :goto_1
    if-eqz v10, :cond_0

    const/4 v14, 0x1

    if-ne v10, v14, :cond_9

    if-eqz v2, :cond_9

    :cond_0
    const/4 v9, 0x1

    .line 16489
    .local v9, overScrollHorizontal:Z
    :goto_2
    if-eqz v10, :cond_1

    const/4 v14, 0x1

    if-ne v10, v14, :cond_a

    if-eqz v3, :cond_a

    :cond_1
    const/4 v11, 0x1

    .line 16492
    .local v11, overScrollVertical:Z
    :goto_3
    add-int v7, p3, p1

    .line 16493
    .local v7, newScrollX:I
    if-nez v9, :cond_2

    .line 16494
    const/16 p7, 0x0

    .line 16497
    :cond_2
    add-int v8, p4, p2

    .line 16498
    .local v8, newScrollY:I
    if-nez v11, :cond_3

    .line 16499
    const/16 p8, 0x0

    .line 16503
    :cond_3
    move/from16 v0, p7

    neg-int v6, v0

    .line 16504
    .local v6, left:I
    add-int v12, p7, p5

    .line 16505
    .local v12, right:I
    move/from16 v0, p8

    neg-int v13, v0

    .line 16506
    .local v13, top:I
    add-int v1, p8, p6

    .line 16508
    .local v1, bottom:I
    const/4 v4, 0x0

    .line 16509
    .local v4, clampedX:Z
    if-le v7, v12, :cond_b

    .line 16510
    move v7, v12

    .line 16511
    const/4 v4, 0x1

    .line 16517
    :cond_4
    :goto_4
    const/4 v5, 0x0

    .line 16518
    .local v5, clampedY:Z
    if-le v8, v1, :cond_c

    .line 16519
    move v8, v1

    .line 16520
    const/4 v5, 0x1

    .line 16526
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v4, v5}, Landroid/view/View;->onOverScrolled(IIZZ)V

    .line 16528
    if-nez v4, :cond_6

    if-eqz v5, :cond_d

    :cond_6
    const/4 v14, 0x1

    :goto_6
    return v14

    .line 16483
    .end local v1           #bottom:I
    .end local v2           #canScrollHorizontal:Z
    .end local v3           #canScrollVertical:Z
    .end local v4           #clampedX:Z
    .end local v5           #clampedY:Z
    .end local v6           #left:I
    .end local v7           #newScrollX:I
    .end local v8           #newScrollY:I
    .end local v9           #overScrollHorizontal:Z
    .end local v11           #overScrollVertical:Z
    .end local v12           #right:I
    .end local v13           #top:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 16485
    .restart local v2       #canScrollHorizontal:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    .line 16487
    .restart local v3       #canScrollVertical:Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 16489
    .restart local v9       #overScrollHorizontal:Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_3

    .line 16512
    .restart local v1       #bottom:I
    .restart local v4       #clampedX:Z
    .restart local v6       #left:I
    .restart local v7       #newScrollX:I
    .restart local v8       #newScrollY:I
    .restart local v11       #overScrollVertical:Z
    .restart local v12       #right:I
    .restart local v13       #top:I
    :cond_b
    if-ge v7, v6, :cond_4

    .line 16513
    move v7, v6

    .line 16514
    const/4 v4, 0x1

    goto :goto_4

    .line 16521
    .restart local v5       #clampedY:Z
    :cond_c
    if-ge v8, v13, :cond_5

    .line 16522
    move v8, v13

    .line 16523
    const/4 v5, 0x1

    goto :goto_5

    .line 16528
    :cond_d
    const/4 v14, 0x0

    goto :goto_6
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 6932
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 6933
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 6935
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6945
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v2, v3

    .line 7011
    :cond_1
    :goto_0
    return v2

    .line 6947
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6948
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result v2

    goto :goto_0

    .line 6952
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6953
    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    move-result v2

    goto :goto_0

    .line 6957
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6960
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 6961
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_0

    .line 6965
    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6966
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 6967
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 6971
    :sswitch_4
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6972
    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 6973
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v2

    goto :goto_0

    .line 6977
    :sswitch_5
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6978
    invoke-virtual {p0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 6979
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 6983
    :sswitch_6
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityFocusable()I

    move-result v1

    .line 6984
    .local v1, mode:I
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-nez v4, :cond_0

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_0

    .line 6987
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    move-result v2

    goto :goto_0

    .line 6991
    .end local v1           #mode:I
    :sswitch_7
    invoke-virtual {p0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6992
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    goto :goto_0

    .line 6997
    :sswitch_8
    if-eqz p2, :cond_0

    .line 6998
    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 7000
    .local v0, granularity:I
    invoke-direct {p0, v0}, Landroid/view/View;->nextAtGranularity(I)Z

    move-result v2

    goto/16 :goto_0

    .line 7004
    .end local v0           #granularity:I
    :sswitch_9
    if-eqz p2, :cond_0

    .line 7005
    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 7007
    .restart local v0       #granularity:I
    invoke-direct {p0, v0}, Landroid/view/View;->previousAtGranularity(I)Z

    move-result v2

    goto/16 :goto_0

    .line 6945
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_4
        0x8 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method protected performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 4288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->showContextMenu(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4290
    const/4 v0, 0x1

    .line 4293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4227
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4229
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4230
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    .line 4231
    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 4232
    iget-object v2, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4236
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method performCollectViewAttributes(Landroid/view/View$AttachInfo;I)V
    .locals 4
    .parameter "attachInfo"
    .parameter "visibility"

    .prologue
    const/high16 v2, 0x400

    const/4 v3, 0x1

    .line 7796
    and-int/lit8 v1, p2, 0xc

    if-nez v1, :cond_1

    .line 7797
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 7798
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 7800
    :cond_0
    iget v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v2, p0, Landroid/view/View;->mSystemUiVisibility:I

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 7801
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 7802
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_1

    #getter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$700(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7803
    iput-boolean v3, p1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 7806
    .end local v0           #li:Landroid/view/View$ListenerInfo;
    :cond_1
    return-void
.end method

.method public performHapticFeedback(I)Z
    .locals 1
    .parameter "feedbackConstant"

    .prologue
    .line 15933
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z

    move-result v0

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 3
    .parameter "feedbackConstant"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    .line 15946
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_1

    .line 15954
    :cond_0
    :goto_0
    return v0

    .line 15950
    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15954
    :cond_2
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {v1, p1, v0}, Landroid/view/View$AttachInfo$Callbacks;->performHapticFeedback(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    .line 4263
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4265
    const/4 v0, 0x0

    .line 4266
    .local v0, handled:Z
    iget-object v1, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4267
    .local v1, li:Landroid/view/View$ListenerInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_0

    .line 4268
    iget-object v2, v1, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 4270
    :cond_0
    if-nez v0, :cond_1

    .line 4271
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    .line 4273
    :cond_1
    if-eqz v0, :cond_2

    .line 4274
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4276
    :cond_2
    return v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .parameter "soundConstant"

    .prologue
    .line 15911
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isSoundEffectsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15915
    :cond_0
    :goto_0
    return-void

    .line 15914
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mRootCallbacks:Landroid/view/View$AttachInfo$Callbacks;

    invoke-interface {v0, p1}, Landroid/view/View$AttachInfo$Callbacks;->playSoundEffect(I)V

    goto :goto_0
.end method

.method final pointInView(FF)Z
    .locals 3
    .parameter "localX"
    .parameter "localY"

    .prologue
    const/4 v2, 0x0

    .line 9984
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 10715
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10716
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10717
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 10721
    :goto_0
    return v1

    .line 10720
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    .line 10721
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 10747
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10748
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10749
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    .line 10753
    :goto_0
    return v1

    .line 10752
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 10753
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 2

    .prologue
    .line 10849
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 10850
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 10869
    const-wide/16 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 10870
    return-void
.end method

.method public postInvalidateDelayed(J)V
    .locals 2
    .parameter "delayMilliseconds"

    .prologue
    .line 10888
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10889
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10890
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateDelayed(Landroid/view/View;J)V

    .line 10892
    :cond_0
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 3
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 10917
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10918
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10919
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 10920
    .local v1, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 10921
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 10922
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 10923
    iput p5, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 10924
    iput p6, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 10926
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1, p1, p2}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V

    .line 10928
    .end local v1           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_0
    return-void
.end method

.method public postInvalidateOnAnimation()V
    .locals 2

    .prologue
    .line 10942
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10943
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10944
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl;->dispatchInvalidateOnAnimation(Landroid/view/View;)V

    .line 10946
    :cond_0
    return-void
.end method

.method public postInvalidateOnAnimation(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 10966
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10967
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10968
    invoke-static {}, Landroid/view/View$AttachInfo$InvalidateInfo;->acquire()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v1

    .line 10969
    .local v1, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iput-object p0, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 10970
    iput p1, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    .line 10971
    iput p2, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    .line 10972
    iput p3, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    .line 10973
    iput p4, v1, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    .line 10975
    iget-object v2, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl;->dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 10977
    .end local v1           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :cond_0
    return-void
.end method

.method public postOnAnimation(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "action"

    .prologue
    .line 10769
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10770
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_0

    .line 10771
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 10777
    :goto_0
    return-void

    .line 10775
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public postOnAnimationDelayed(Ljava/lang/Runnable;J)V
    .locals 7
    .parameter "action"
    .parameter "delayMillis"

    .prologue
    .line 10795
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10796
    .local v6, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v6, :cond_0

    .line 10797
    iget-object v0, v6, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 10803
    :goto_0
    return-void

    .line 10801
    :cond_0
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method protected recomputePadding()V
    .locals 4

    .prologue
    .line 11200
    iget v0, p0, Landroid/view/View;->mUserPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, p0, Landroid/view/View;->mUserPaddingRight:I

    iget v3, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 11201
    return-void
.end method

.method public refreshDrawableState()V
    .locals 2

    .prologue
    .line 14329
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14330
    invoke-virtual {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 14332
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 14333
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 14334
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->childDrawableStateChanged(Landroid/view/View;)V

    .line 14336
    :cond_0
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 4
    .parameter "action"

    .prologue
    const/4 v3, 0x1

    .line 10824
    if-eqz p1, :cond_0

    .line 10825
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 10826
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_1

    .line 10827
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10828
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 10835
    .end local v0           #attachInfo:Landroid/view/View$AttachInfo;
    :cond_0
    :goto_0
    return v3

    .line 10832
    .restart local v0       #attachInfo:Landroid/view/View$AttachInfo;
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 4148
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4149
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4153
    :cond_0
    :goto_0
    return-void

    .line 4152
    :cond_1
    #getter for: Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$100(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 4114
    iget-object v0, p0, Landroid/view/View;->mListenerInfo:Landroid/view/View$ListenerInfo;

    .line 4115
    .local v0, li:Landroid/view/View$ListenerInfo;
    if-eqz v0, :cond_0

    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 4119
    :cond_0
    :goto_0
    return-void

    .line 4118
    :cond_1
    #getter for: Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/view/View$ListenerInfo;->access$000(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestAccessibilityFocus()Z
    .locals 5

    .prologue
    const/high16 v4, 0x400

    const/4 v2, 0x0

    .line 6426
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 6427
    .local v0, manager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6444
    :cond_0
    :goto_0
    return v2

    .line 6430
    :cond_1
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    .line 6433
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 6434
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v2, v4

    iput v2, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6435
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 6436
    .local v1, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_2

    .line 6437
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6439
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6440
    const v2, 0x8000

    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 6441
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 6442
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .prologue
    .line 5624
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 5625
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestFitSystemWindows()V

    .line 5627
    :cond_0
    return-void
.end method

.method public final requestFocus()Z
    .locals 1

    .prologue
    .line 6551
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    return v0
.end method

.method public final requestFocus(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 6572
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 6605
    invoke-direct {p0, p1, p2}, Landroid/view/View;->requestFocusNoSearch(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final requestFocusFromTouch()Z
    .locals 2

    .prologue
    .line 6642
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6643
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 6644
    .local v0, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    .line 6645
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 6648
    .end local v0           #viewRoot:Landroid/view/ViewRootImpl;
    :cond_0
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    return v1
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 15453
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15454
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x8000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15456
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 15457
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$LayoutParams;->onResolveLayoutDirection(I)V

    .line 15460
    :cond_0
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15461
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 15463
    :cond_1
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "rectangle"

    .prologue
    .line 4426
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 5
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 4445
    move-object v0, p0

    .line 4446
    .local v0, child:Landroid/view/View;
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4447
    .local v1, parent:Landroid/view/ViewParent;
    const/4 v2, 0x0

    .line 4448
    .local v2, scrolled:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 4449
    invoke-interface {v1, v0, p1, p2}, Landroid/view/ViewParent;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 4454
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 4455
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 4457
    instance-of v3, v1, Landroid/view/View;

    if-nez v3, :cond_1

    .line 4464
    :cond_0
    return v2

    :cond_1
    move-object v0, v1

    .line 4461
    check-cast v0, Landroid/view/View;

    .line 4462
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method public resetAccessibilityStateChanged()V
    .locals 2

    .prologue
    .line 6914
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x8000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6915
    return-void
.end method

.method public resetResolvedLayoutDirection()V
    .locals 1

    .prologue
    .line 11935
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0x31

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 11936
    invoke-virtual {p0}, Landroid/view/View;->onResolvedLayoutDirectionReset()V

    .line 11938
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 11939
    return-void
.end method

.method public resetResolvedTextAlignment()V
    .locals 2

    .prologue
    .line 16977
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xf0001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16978
    invoke-virtual {p0}, Landroid/view/View;->onResolvedTextAlignmentReset()V

    .line 16979
    return-void
.end method

.method public resetResolvedTextDirection()V
    .locals 1

    .prologue
    .line 16776
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1e01

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16777
    invoke-virtual {p0}, Landroid/view/View;->onResolvedTextDirectionReset()V

    .line 16778
    return-void
.end method

.method public resolveLayoutDirection()V
    .locals 3

    .prologue
    .line 11800
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v1, v1, -0x31

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 11802
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11804
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 11831
    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 11832
    invoke-virtual {p0}, Landroid/view/View;->onResolvedLayoutDirectionChanged()V

    .line 11834
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11835
    return-void

    .line 11807
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11808
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    .line 11810
    .local v0, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResolvedLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 11811
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 11818
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :pswitch_1
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 11821
    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/view/View;->isLayoutDirectionRtl(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11822
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 11804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resolvePadding()V
    .locals 5

    .prologue
    .line 11855
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    .line 11856
    .local v0, resolvedLayoutDirection:I
    packed-switch v0, :pswitch_data_0

    .line 11877
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v1, :cond_5

    .line 11878
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    .line 11882
    :cond_0
    :goto_0
    iget v1, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v1, :cond_6

    .line 11883
    iget v1, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 11889
    :cond_1
    :goto_1
    iget v1, p0, Landroid/view/View;->mUserPaddingBottom:I

    if-ltz v1, :cond_7

    iget v1, p0, Landroid/view/View;->mUserPaddingBottom:I

    :goto_2
    iput v1, p0, Landroid/view/View;->mUserPaddingBottom:I

    .line 11891
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 11892
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    iget v3, p0, Landroid/view/View;->mUserPaddingEnd:I

    iget v4, p0, Landroid/view/View;->mUserPaddingBottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 11896
    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->onPaddingChanged(I)V

    .line 11897
    return-void

    .line 11861
    :pswitch_0
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    if-ltz v1, :cond_3

    .line 11862
    iget v1, p0, Landroid/view/View;->mUserPaddingStart:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    .line 11866
    :cond_2
    :goto_4
    iget v1, p0, Landroid/view/View;->mUserPaddingEnd:I

    if-ltz v1, :cond_4

    .line 11867
    iget v1, p0, Landroid/view/View;->mUserPaddingEnd:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_1

    .line 11863
    :cond_3
    iget v1, p0, Landroid/view/View;->mUserPaddingRight:I

    if-gez v1, :cond_2

    .line 11864
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_4

    .line 11868
    :cond_4
    iget v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    if-gez v1, :cond_1

    .line 11869
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_1

    .line 11879
    :cond_5
    iget v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    if-gez v1, :cond_0

    .line 11880
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iput v1, p0, Landroid/view/View;->mUserPaddingLeft:I

    goto :goto_0

    .line 11884
    :cond_6
    iget v1, p0, Landroid/view/View;->mUserPaddingRight:I

    if-gez v1, :cond_1

    .line 11885
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iput v1, p0, Landroid/view/View;->mUserPaddingRight:I

    goto :goto_1

    .line 11889
    :cond_7
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_2

    .line 11894
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->recomputePadding()V

    goto :goto_3

    .line 11856
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public resolveTextAlignment()V
    .locals 6

    .prologue
    const/high16 v5, 0x2

    .line 16887
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const v4, -0xf0001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16889
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16891
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    .line 16892
    .local v1, textAlignment:I
    packed-switch v1, :pswitch_data_0

    .line 16932
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16940
    .end local v1           #textAlignment:I
    :goto_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    const/high16 v4, 0x1

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16941
    invoke-virtual {p0}, Landroid/view/View;->onResolvedTextAlignmentChanged()V

    .line 16942
    return-void

    .line 16895
    .restart local v1       #textAlignment:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 16896
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/View;

    .line 16898
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getResolvedTextAlignment()I

    move-result v0

    .line 16899
    .local v0, parentResolvedTextAlignment:I
    packed-switch v0, :pswitch_data_1

    .line 16913
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16908
    :pswitch_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v4, v0, 0x11

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16918
    .end local v0           #parentResolvedTextAlignment:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16928
    :pswitch_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v4, v1, 0x11

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16936
    .end local v1           #textAlignment:I
    :cond_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/2addr v3, v5

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16892
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 16899
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public resolveTextDirection()V
    .locals 5

    .prologue
    .line 16692
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v3, v3, -0x1e01

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16694
    invoke-direct {p0}, Landroid/view/View;->hasRtlSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16696
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v1

    .line 16697
    .local v1, textDirection:I
    packed-switch v1, :pswitch_data_0

    .line 16732
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16740
    .end local v1           #textDirection:I
    :goto_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16741
    invoke-virtual {p0}, Landroid/view/View;->onResolvedTextDirectionChanged()V

    .line 16742
    return-void

    .line 16699
    .restart local v1       #textDirection:I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->canResolveTextDirection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16700
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v2, Landroid/view/ViewGroup;

    .line 16703
    .local v2, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResolvedTextDirection()I

    move-result v0

    .line 16704
    .local v0, parentResolvedDirection:I
    packed-switch v0, :pswitch_data_1

    .line 16715
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16710
    :pswitch_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v4, v0, 0xa

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16719
    .end local v0           #parentResolvedDirection:I
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16728
    :pswitch_2
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v4, v1, 0xa

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16736
    .end local v1           #textDirection:I
    :cond_1
    iget v3, p0, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Landroid/view/View;->mPrivateFlags2:I

    goto :goto_0

    .line 16697
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 16704
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12206
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 12207
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12140
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 12141
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 8
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 14226
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 14227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v6, p3, v0

    .line 14228
    .local v6, delay:J
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 14229
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-static {v6, v7}, Landroid/view/Choreographer;->subtractFrameDelay(J)J

    move-result-wide v4

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 14236
    .end local v6           #delay:J
    :cond_0
    :goto_0
    return-void

    .line 14233
    .restart local v6       #delay:J
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2, v6, v7}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10222
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 10223
    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10201
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_1

    .line 10202
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 10203
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 10204
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 10205
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 10206
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 10207
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 10208
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10209
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 10212
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 4636
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4637
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 4641
    :goto_0
    return-void

    .line 4639
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventInternal(I)V

    goto :goto_0
.end method

.method sendAccessibilityEventInternal(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 4667
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4668
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4670
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4688
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 4689
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4693
    :goto_0
    return-void

    .line 4691
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method sendAccessibilityEventUncheckedInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 4701
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4711
    :goto_0
    return-void

    .line 4704
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4706
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x2a1bf

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4707
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4710
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0
.end method

.method public setAccessibilityCursorPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 7094
    iput p1, p0, Landroid/view/View;->mAccessibilityCursorPosition:I

    .line 7095
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 5124
    iput-object p1, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 5125
    return-void
.end method

.method public setAccessibilityFocusable(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 6771
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityFocusable()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 6772
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x60000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6773
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x1d

    const/high16 v2, 0x6000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6775
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 6777
    :cond_0
    return-void
.end method

.method public setActivated(Z)V
    .locals 5
    .parameter "activated"

    .prologue
    const/high16 v0, 0x4000

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 14885
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    if-eq v2, p1, :cond_0

    .line 14886
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v4, -0x40000001

    and-int/2addr v2, v4

    if-eqz p1, :cond_2

    :goto_1
    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14887
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 14888
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 14889
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetActivated(Z)V

    .line 14891
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 14885
    goto :goto_0

    :cond_2
    move v0, v1

    .line 14886
    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    const/4 v2, 0x1

    .line 9514
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9515
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 9516
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 9517
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9518
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9520
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 9521
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 9530
    :cond_0
    :goto_0
    return-void

    .line 9523
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9524
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9525
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v0, :cond_0

    .line 9526
    iget-object v0, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v0, p1}, Landroid/view/DisplayList;->setAlpha(F)V

    goto :goto_0
.end method

.method setAlphaNoInvalidation(F)Z
    .locals 3
    .parameter "alpha"

    .prologue
    .line 9543
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9544
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9545
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput p1, v1, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 9546
    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    .line 9547
    .local v0, subclassHandlesAlpha:Z
    if-eqz v0, :cond_0

    .line 9548
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x4

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9549
    const/4 v1, 0x1

    .line 9557
    .end local v0           #subclassHandlesAlpha:Z
    :goto_0
    return v1

    .line 9551
    .restart local v0       #subclassHandlesAlpha:Z
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9552
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_1

    .line 9553
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setAlpha(F)V

    .line 9557
    .end local v0           #subclassHandlesAlpha:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 15809
    iput-object p1, p0, Landroid/view/View;->mCurrentAnimation:Landroid/view/animation/Animation;

    .line 15811
    if-eqz p1, :cond_1

    .line 15815
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScreenOn:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 15817
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 15819
    :cond_0
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 15821
    :cond_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 14516
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14517
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 14475
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 14476
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 14480
    :goto_0
    return-void

    .line 14478
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "background"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 14524
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_0

    .line 14611
    :goto_0
    return-void

    .line 14528
    :cond_0
    const/4 v1, 0x0

    .line 14530
    .local v1, requestLayout:Z
    iput v4, p0, Landroid/view/View;->mBackgroundResource:I

    .line 14536
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 14537
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14538
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14541
    :cond_1
    if-eqz p1, :cond_a

    .line 14542
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 14543
    .local v0, padding:Landroid/graphics/Rect;
    if-nez v0, :cond_2

    .line 14544
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #padding:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14545
    .restart local v0       #padding:Landroid/graphics/Rect;
    sget-object v2, Landroid/view/View;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 14547
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14548
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getResolvedLayoutDirectionSelf()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 14554
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 14560
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    if-eq v2, v5, :cond_5

    .line 14562
    :cond_4
    const/4 v1, 0x1

    .line 14565
    :cond_5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 14566
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14567
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 14569
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 14570
    iput-object p1, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 14572
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    .line 14573
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14574
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14575
    const/4 v1, 0x1

    .line 14603
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 14605
    if-eqz v1, :cond_8

    .line 14606
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14609
    :cond_8
    iput-boolean v3, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 14610
    invoke-virtual {p0, v3}, Landroid/view/View;->invalidate(Z)V

    goto/16 :goto_0

    .line 14550
    .restart local v0       #padding:Landroid/graphics/Rect;
    :pswitch_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_9
    move v2, v4

    .line 14569
    goto :goto_2

    .line 14579
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_a
    iput-object v5, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 14581
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_b

    .line 14587
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14588
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14600
    :cond_b
    const/4 v1, 0x1

    goto :goto_3

    .line 14548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 14491
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/view/View;->mBackgroundResource:I

    if-ne p1, v1, :cond_0

    .line 14502
    :goto_0
    return-void

    .line 14495
    :cond_0
    const/4 v0, 0x0

    .line 14496
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_1

    .line 14497
    iget-object v1, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 14499
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14501
    iput p1, p0, Landroid/view/View;->mBackgroundResource:I

    goto :goto_0
.end method

.method public final setBottom(I)V
    .locals 9
    .parameter "bottom"

    .prologue
    const/high16 v8, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 9654
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-eq p1, v6, :cond_5

    .line 9655
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9656
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    move v0, v5

    .line 9658
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_8

    .line 9659
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_1

    .line 9661
    iget v6, p0, Landroid/view/View;->mBottom:I

    if-ge p1, v6, :cond_7

    .line 9662
    iget v1, p0, Landroid/view/View;->mBottom:I

    .line 9666
    .local v1, maxBottom:I
    :goto_1
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 9673
    .end local v1           #maxBottom:I
    :cond_1
    :goto_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 9674
    .local v3, width:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v2, v4, v6

    .line 9676
    .local v2, oldHeight:I
    iput p1, p0, Landroid/view/View;->mBottom:I

    .line 9677
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_2

    .line 9678
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v6, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v4, v6}, Landroid/view/DisplayList;->setBottom(I)V

    .line 9681
    :cond_2
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v3, v4, v3, v2}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 9683
    if-nez v0, :cond_4

    .line 9684
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x2000

    and-int/2addr v4, v6

    if-nez v4, :cond_3

    .line 9686
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9688
    :cond_3
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9689
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 9691
    :cond_4
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9692
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9693
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_5

    .line 9695
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9698
    .end local v0           #matrixIsIdentity:Z
    .end local v2           #oldHeight:I
    .end local v3           #width:I
    :cond_5
    return-void

    :cond_6
    move v0, v4

    .line 9656
    goto :goto_0

    .line 9664
    .restart local v0       #matrixIsIdentity:Z
    :cond_7
    move v1, p1

    .restart local v1       #maxBottom:I
    goto :goto_1

    .line 9670
    .end local v1           #maxBottom:I
    :cond_8
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setCameraDistance(F)V
    .locals 8
    .parameter "distance"

    .prologue
    const/high16 v7, 0x1000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 9106
    invoke-virtual {p0, v6, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9108
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9109
    iget-object v2, p0, Landroid/view/View;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v2

    .line 9110
    .local v0, dpi:F
    iget-object v1, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9111
    .local v1, info:Landroid/view/View$TransformationInfo;
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 9112
    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 9113
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v1, v2}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 9116
    :cond_0
    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v1}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v5, v5, v3}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 9117
    iput-boolean v6, v1, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9119
    invoke-virtual {p0, v4, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9120
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v2, :cond_1

    .line 9121
    iget-object v2, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/DisplayList;->setCameraDistance(F)V

    .line 9123
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_2

    .line 9125
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9127
    :cond_2
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .parameter "clickable"

    .prologue
    const/16 v1, 0x4000

    .line 6000
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6001
    return-void

    .line 6000
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "contentDescription"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 5212
    iput-object p1, p0, Landroid/view/View;->mContentDescription:Ljava/lang/CharSequence;

    .line 5213
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    move v0, v1

    .line 5214
    .local v0, nonEmptyDesc:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 5215
    invoke-virtual {p0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 5217
    :cond_0
    return-void

    .line 5213
    .end local v0           #nonEmptyDesc:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContextMenuZOrderToTop(Z)V
    .locals 0
    .parameter "isTop"

    .prologue
    .line 18356
    iput-boolean p1, p0, Landroid/view/View;->mIsSetContextMenuZOrderToTop:Z

    .line 18357
    return-void
.end method

.method public setDisabledSystemUiVisibility(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 16086
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 16087
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 16088
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p1, v0, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    .line 16089
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 16090
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 16094
    :cond_0
    return-void
.end method

.method setDisplayListProperties(Landroid/view/DisplayList;)V
    .locals 14
    .parameter "displayList"

    .prologue
    .line 13325
    if-eqz p1, :cond_5

    .line 13326
    iget v0, p0, Landroid/view/View;->mLeft:I

    iget v2, p0, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 13327
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setHasOverlappingRendering(Z)V

    .line 13328
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 13329
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .line 13332
    :cond_0
    const/high16 v1, 0x3f80

    .line 13333
    .local v1, alpha:F
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2

    .line 13335
    iget-object v11, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v11, Landroid/view/ViewGroup;

    .line 13336
    .local v11, parentVG:Landroid/view/ViewGroup;
    iget-object v0, v11, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v11, p0, v0}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v9

    .line 13338
    .local v9, hasTransform:Z
    if-eqz v9, :cond_2

    .line 13339
    iget-object v12, v11, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 13340
    .local v12, transform:Landroid/view/animation/Transformation;
    iget-object v0, v11, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v13

    .line 13341
    .local v13, transformType:I
    sget v0, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    if-eq v13, v0, :cond_2

    .line 13342
    sget v0, Landroid/view/animation/Transformation;->TYPE_ALPHA:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_1

    .line 13343
    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    .line 13345
    :cond_1
    sget v0, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_2

    .line 13346
    invoke-virtual {v12}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setStaticMatrix(Landroid/graphics/Matrix;)V

    .line 13351
    .end local v9           #hasTransform:Z
    .end local v11           #parentVG:Landroid/view/ViewGroup;
    .end local v12           #transform:Landroid/view/animation/Transformation;
    .end local v13           #transformType:I
    :cond_2
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v0, :cond_7

    .line 13352
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v0, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    mul-float/2addr v1, v0

    .line 13353
    const/high16 v0, 0x3f80

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    .line 13354
    const/high16 v0, 0x437f

    mul-float/2addr v0, v1

    float-to-int v10, v0

    .line 13355
    .local v10, multipliedAlpha:I
    invoke-virtual {p0, v10}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13356
    const/high16 v1, 0x3f80

    .line 13359
    .end local v10           #multipliedAlpha:I
    :cond_3
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v2, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v3, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v4, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v5, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v6, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v7, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v8, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/view/DisplayList;->setTransformationInfo(FFFFFFFF)V

    .line 13364
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v0

    if-nez v0, :cond_4

    .line 13365
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v2, Landroid/graphics/Camera;

    invoke-direct {v2}, Landroid/graphics/Camera;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0, v2}, Landroid/view/View$TransformationInfo;->access$1502(Landroid/view/View$TransformationInfo;Landroid/graphics/Camera;)Landroid/graphics/Camera;

    .line 13366
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    #setter for: Landroid/view/View$TransformationInfo;->matrix3D:Landroid/graphics/Matrix;
    invoke-static {v0, v2}, Landroid/view/View$TransformationInfo;->access$1602(Landroid/view/View$TransformationInfo;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 13368
    :cond_4
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mCamera:Landroid/graphics/Camera;
    invoke-static {v0}, Landroid/view/View$TransformationInfo;->access$1500(Landroid/view/View$TransformationInfo;)Landroid/graphics/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Camera;->getLocationZ()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setCameraDistance(F)V

    .line 13369
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    and-int/2addr v0, v2

    const/high16 v2, 0x2000

    if-ne v0, v2, :cond_5

    .line 13370
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setPivotX(F)V

    .line 13371
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/DisplayList;->setPivotY(F)V

    .line 13377
    .end local v1           #alpha:F
    :cond_5
    :goto_1
    return-void

    .line 13329
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 13373
    .restart local v1       #alpha:F
    :cond_7
    const/high16 v0, 0x3f80

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    .line 13374
    invoke-virtual {p1, v1}, Landroid/view/DisplayList;->setAlpha(F)V

    goto :goto_1
.end method

.method public setDrawingCacheBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 12863
    iget v0, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    if-eq p1, v0, :cond_0

    .line 12864
    iput p1, p0, Landroid/view/View;->mDrawingCacheBackgroundColor:I

    .line 12865
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12867
    :cond_0
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const v1, 0x8000

    const/4 v0, 0x0

    .line 12562
    iput-boolean v0, p0, Landroid/view/View;->mCachingFailed:Z

    .line 12563
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 12564
    return-void
.end method

.method public setDrawingCacheQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 5338
    const/high16 v0, 0x18

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 5339
    return-void
.end method

.method public setDuplicateParentStateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x40

    .line 12291
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 12292
    return-void

    .line 12291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/16 v1, 0x20

    .line 5683
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 5696
    :goto_0
    return-void

    .line 5685
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5691
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 5695
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5685
    goto :goto_1
.end method

.method public setFadingEdgeLength(I)V
    .locals 1
    .parameter "length"

    .prologue
    .line 3898
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 3899
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->fadingEdgeLength:I

    .line 3900
    return-void
.end method

.method public setFilterTouchesWhenObscured(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/16 v1, 0x400

    .line 6137
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6139
    return-void

    :cond_0
    move v0, v1

    .line 6137
    goto :goto_0
.end method

.method public setFitsSystemWindows(Z)V
    .locals 2
    .parameter "fitSystemWindows"

    .prologue
    const/4 v1, 0x2

    .line 5595
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5596
    return-void

    .line 5595
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setFlags(II)V
    .locals 8
    .parameter "flags"
    .parameter "mask"

    .prologue
    const/4 v5, 0x0

    const v7, -0x8001

    const/4 v6, 0x1

    .line 8554
    iget v1, p0, Landroid/view/View;->mViewFlags:I

    .line 8555
    .local v1, old:I
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    and-int v4, p1, p2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/View;->mViewFlags:I

    .line 8557
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    xor-int v0, v3, v1

    .line 8558
    .local v0, changed:I
    if-nez v0, :cond_1

    .line 8700
    :cond_0
    :goto_0
    return-void

    .line 8561
    :cond_1
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8564
    .local v2, privateFlags:I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_3

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_3

    .line 8566
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v6, :cond_13

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_13

    .line 8569
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 8578
    :cond_2
    :goto_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8579
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 8583
    :cond_3
    and-int/lit8 v3, p1, 0xc

    if-nez v3, :cond_4

    .line 8584
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_4

    .line 8590
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8591
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 8593
    invoke-virtual {p0, v6}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 8599
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    if-le v3, v4, :cond_4

    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    if-le v3, v4, :cond_4

    .line 8600
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 8606
    :cond_4
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_8

    .line 8607
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 8608
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8610
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 8611
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 8612
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8613
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8614
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_6

    .line 8616
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->invalidate(Z)V

    .line 8620
    :cond_6
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8622
    :cond_7
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_8

    .line 8623
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 8628
    :cond_8
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_a

    .line 8629
    invoke-virtual {p0, v5}, Landroid/view/View;->needGlobalAttributesUpdate(Z)V

    .line 8634
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8636
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8638
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eq v3, p0, :cond_9

    .line 8639
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 8640
    invoke-virtual {p0}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8643
    :cond_9
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_a

    .line 8644
    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v3, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 8648
    :cond_a
    and-int/lit8 v3, v0, 0xc

    if-eqz v3, :cond_c

    .line 8649
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_14

    .line 8650
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/ViewGroup;

    and-int/lit8 v4, v0, 0xc

    and-int/lit8 v5, p1, 0xc

    invoke-virtual {v3, p0, v4, v5}, Landroid/view/ViewGroup;->onChildVisibilityChanged(Landroid/view/View;II)V

    .line 8652
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->invalidate(Z)V

    .line 8656
    :cond_b
    :goto_2
    and-int/lit8 v3, p1, 0xc

    invoke-virtual {p0, p0, v3}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 8659
    :cond_c
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_d

    .line 8660
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8663
    :cond_d
    const v3, 0x8000

    and-int/2addr v3, v0

    if-eqz v3, :cond_e

    .line 8664
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8665
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8666
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 8669
    :cond_e
    const/high16 v3, 0x18

    and-int/2addr v3, v0

    if-eqz v3, :cond_f

    .line 8670
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 8671
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v3, v7

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8674
    :cond_f
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_10

    .line 8675
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_16

    .line 8676
    iget-object v3, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_15

    .line 8677
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8678
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8685
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8686
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 8689
    :cond_10
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    if-eqz v3, :cond_11

    .line 8690
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v3, :cond_11

    .line 8691
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 8695
    :cond_11
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_12

    and-int/lit16 v3, v0, 0x4000

    if-nez v3, :cond_12

    const/high16 v3, 0x20

    and-int/2addr v3, v0

    if-nez v3, :cond_12

    and-int/lit8 v3, v0, 0x0

    if-eqz v3, :cond_0

    .line 8698
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    goto/16 :goto_0

    .line 8570
    :cond_13
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2

    .line 8576
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v3, p0}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    goto/16 :goto_1

    .line 8653
    :cond_14
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v3, :cond_b

    .line 8654
    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/view/ViewParent;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 8680
    :cond_15
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_3

    .line 8683
    :cond_16
    iget v3, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_3
.end method

.method public setFocusable(Z)V
    .locals 3
    .parameter "focusable"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5710
    if-nez p1, :cond_0

    .line 5711
    const/high16 v2, 0x4

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setFlags(II)V

    .line 5713
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5714
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .parameter "focusableInTouchMode"

    .prologue
    const/high16 v1, 0x4

    const/4 v2, 0x1

    .line 5732
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5733
    if-eqz p1, :cond_0

    .line 5734
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setFlags(II)V

    .line 5736
    :cond_0
    return-void

    .line 5732
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 13
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 14118
    const/4 v1, 0x0

    .line 14125
    .local v1, changed:Z
    iget v8, p0, Landroid/view/View;->mLeft:I

    if-ne v8, p1, :cond_0

    iget v8, p0, Landroid/view/View;->mRight:I

    move/from16 v0, p3

    if-ne v8, v0, :cond_0

    iget v8, p0, Landroid/view/View;->mTop:I

    if-ne v8, p2, :cond_0

    iget v8, p0, Landroid/view/View;->mBottom:I

    move/from16 v0, p4

    if-eq v8, v0, :cond_6

    .line 14126
    :cond_0
    const/4 v1, 0x1

    .line 14129
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v8, 0x20

    .line 14131
    .local v2, drawn:I
    iget v8, p0, Landroid/view/View;->mRight:I

    iget v9, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v8, v9

    .line 14132
    .local v6, oldWidth:I
    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int v5, v8, v9

    .line 14133
    .local v5, oldHeight:I
    sub-int v4, p3, p1

    .line 14134
    .local v4, newWidth:I
    sub-int v3, p4, p2

    .line 14135
    .local v3, newHeight:I
    if-ne v4, v6, :cond_1

    if-eq v3, v5, :cond_7

    :cond_1
    const/4 v7, 0x1

    .line 14138
    .local v7, sizeChanged:Z
    :goto_0
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 14140
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 14141
    iput p2, p0, Landroid/view/View;->mTop:I

    .line 14142
    move/from16 v0, p3

    iput v0, p0, Landroid/view/View;->mRight:I

    .line 14143
    move/from16 v0, p4

    iput v0, p0, Landroid/view/View;->mBottom:I

    .line 14144
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v8, :cond_2

    .line 14145
    iget-object v8, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v9, p0, Landroid/view/View;->mLeft:I

    iget v10, p0, Landroid/view/View;->mTop:I

    iget v11, p0, Landroid/view/View;->mRight:I

    iget v12, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 14148
    :cond_2
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14151
    if-eqz v7, :cond_4

    .line 14152
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x2000

    and-int/2addr v8, v9

    if-nez v8, :cond_3

    .line 14154
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v8, :cond_3

    .line 14155
    iget-object v8, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 14158
    :cond_3
    invoke-virtual {p0, v4, v3, v6, v5}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 14161
    :cond_4
    iget v8, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-nez v8, :cond_5

    .line 14167
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14168
    invoke-virtual {p0, v7}, Landroid/view/View;->invalidate(Z)V

    .line 14171
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 14175
    :cond_5
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v8, v2

    iput v8, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14177
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 14179
    .end local v2           #drawn:I
    .end local v3           #newHeight:I
    .end local v4           #newWidth:I
    .end local v5           #oldHeight:I
    .end local v6           #oldWidth:I
    .end local v7           #sizeChanged:Z
    :cond_6
    return v1

    .line 14135
    .restart local v2       #drawn:I
    .restart local v3       #newHeight:I
    .restart local v4       #newWidth:I
    .restart local v5       #oldHeight:I
    .restart local v6       #oldWidth:I
    :cond_7
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setHapticFeedbackEnabled(Z)V
    .locals 2
    .parameter "hapticFeedbackEnabled"

    .prologue
    const/high16 v1, 0x1000

    .line 5780
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5781
    return-void

    .line 5780
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHasTransientState(Z)V
    .locals 4
    .parameter "hasTransientState"

    .prologue
    const/4 v2, 0x0

    .line 5905
    if-eqz p1, :cond_4

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iput v1, p0, Landroid/view/View;->mTransientStateCount:I

    .line 5907
    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-gez v1, :cond_0

    .line 5908
    iput v2, p0, Landroid/view/View;->mTransientStateCount:I

    .line 5909
    const-string v1, "View"

    const-string v3, "hasTransientState decremented below 0: unmatched pair of setHasTransientState calls"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5912
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    if-nez v1, :cond_3

    .line 5915
    :cond_2
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v3, v1, -0x101

    if-eqz p1, :cond_5

    const/16 v1, 0x100

    :goto_1
    or-int/2addr v1, v3

    iput v1, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 5917
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_3

    .line 5919
    :try_start_0
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, p1}, Landroid/view/ViewParent;->childHasTransientStateChanged(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5926
    :cond_3
    :goto_2
    return-void

    .line 5905
    :cond_4
    iget v1, p0, Landroid/view/View;->mTransientStateCount:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    move v1, v2

    .line 5915
    goto :goto_1

    .line 5920
    :catch_0
    move-exception v0

    .line 5921
    .local v0, e:Ljava/lang/AbstractMethodError;
    const-string v1, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not fully implement ViewParent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setHorizontalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter "horizontalFadingEdgeEnabled"

    .prologue
    .line 11032
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 11033
    if-eqz p1, :cond_0

    .line 11034
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11037
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11039
    :cond_1
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .parameter "horizontalScrollBarEnabled"

    .prologue
    .line 11159
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 11160
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11161
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11162
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11164
    :cond_0
    return-void
.end method

.method public setHoverPopupType(I)V
    .locals 1
    .parameter "type"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 18310
    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18311
    iput p1, p0, Landroid/view/View;->mHoverPopupType:I

    .line 18314
    :cond_0
    return-void
.end method

.method public setHovered(Z)V
    .locals 2
    .parameter "hovered"

    .prologue
    const/high16 v1, 0x1000

    .line 8291
    if-eqz p1, :cond_1

    .line 8292
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 8293
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8294
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    .line 8304
    :cond_0
    :goto_0
    return-void

    .line 8298
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 8299
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 8300
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 8301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->onHoverChanged(Z)V

    goto :goto_0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 15187
    iput p1, p0, Landroid/view/View;->mID:I

    .line 15188
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 6704
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 6705
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0x300001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6706
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x14

    const/high16 v2, 0x30

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 6708
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 6710
    :cond_0
    return-void
.end method

.method public setIsRootNamespace(Z)V
    .locals 1
    .parameter "isRoot"

    .prologue
    .line 15197
    if-eqz p1, :cond_0

    .line 15198
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15202
    :goto_0
    return-void

    .line 15200
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)V
    .locals 2
    .parameter "keepScreenOn"

    .prologue
    const/high16 v1, 0x400

    .line 5366
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5367
    return-void

    .line 5366
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 4
    .parameter "layerType"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 12347
    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    .line 12348
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Layer type can only be one of: LAYER_TYPE_NONE, LAYER_TYPE_SOFTWARE or LAYER_TYPE_HARDWARE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12352
    :cond_1
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-ne p1, v3, :cond_4

    .line 12353
    if-eqz p1, :cond_3

    iget-object v1, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p2, v1, :cond_3

    .line 12354
    if-nez p2, :cond_2

    new-instance p2, Landroid/graphics/Paint;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    :cond_2
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 12355
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12356
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 12380
    :cond_3
    :goto_0
    return-void

    .line 12362
    .restart local p2
    :cond_4
    iget v3, p0, Landroid/view/View;->mLayerType:I

    packed-switch v3, :pswitch_data_0

    .line 12373
    :goto_1
    iput p1, p0, Landroid/view/View;->mLayerType:I

    .line 12374
    iget v3, p0, Landroid/view/View;->mLayerType:I

    if-nez v3, :cond_5

    move v0, v2

    .line 12375
    .local v0, layerDisabled:Z
    :cond_5
    if-eqz v0, :cond_7

    move-object p2, v1

    .end local p2
    :cond_6
    :goto_2
    iput-object p2, p0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    .line 12376
    if-eqz v0, :cond_8

    :goto_3
    iput-object v1, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    .line 12378
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 12379
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    goto :goto_0

    .line 12364
    .end local v0           #layerDisabled:Z
    .restart local p2
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/view/View;->destroyLayer(Z)Z

    .line 12367
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_1

    .line 12375
    .restart local v0       #layerDisabled:Z
    :cond_7
    if-nez p2, :cond_6

    new-instance p2, Landroid/graphics/Paint;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto :goto_2

    .line 12376
    :cond_8
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto :goto_3

    .line 12362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLayoutDirection(I)V
    .locals 2
    .parameter "layoutDirection"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 5831
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 5833
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit8 v0, v0, -0xd

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 5834
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5836
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 5838
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5840
    :cond_0
    return-void
.end method

.method public setLayoutInsets(Landroid/graphics/Insets;)V
    .locals 0
    .parameter "layoutInsets"

    .prologue
    .line 14827
    iput-object p1, p0, Landroid/view/View;->mLayoutInsets:Landroid/graphics/Insets;

    .line 14828
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 10183
    if-nez p1, :cond_0

    .line 10184
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Layout parameters cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10186
    :cond_0
    iput-object p1, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 10187
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 10188
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10190
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10191
    return-void
.end method

.method public final setLeft(I)V
    .locals 11
    .parameter "left"

    .prologue
    const/high16 v10, 0x1000

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 9718
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-eq p1, v7, :cond_5

    .line 9719
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9720
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    move v1, v6

    .line 9722
    .local v1, matrixIsIdentity:Z
    :goto_0
    if-eqz v1, :cond_8

    .line 9723
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 9726
    iget v7, p0, Landroid/view/View;->mLeft:I

    if-ge p1, v7, :cond_7

    .line 9727
    move v2, p1

    .line 9728
    .local v2, minLeft:I
    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v4, p1, v7

    .line 9733
    .local v4, xLoc:I
    :goto_1
    iget v7, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v7, v2

    iget v8, p0, Landroid/view/View;->mBottom:I

    iget v9, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v4, v5, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 9740
    .end local v2           #minLeft:I
    .end local v4           #xLoc:I
    :cond_1
    :goto_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 9741
    .local v3, oldWidth:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v0, v5, v7

    .line 9743
    .local v0, height:I
    iput p1, p0, Landroid/view/View;->mLeft:I

    .line 9744
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v5, :cond_2

    .line 9745
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v5, p1}, Landroid/view/DisplayList;->setLeft(I)V

    .line 9748
    :cond_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v5, v7

    invoke-virtual {p0, v5, v0, v3, v0}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 9750
    if-nez v1, :cond_4

    .line 9751
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x2000

    and-int/2addr v5, v7

    if-nez v5, :cond_3

    .line 9753
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9755
    :cond_3
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9756
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 9758
    :cond_4
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9759
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9760
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v5, v10

    if-ne v5, v10, :cond_5

    .line 9762
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9765
    .end local v0           #height:I
    .end local v1           #matrixIsIdentity:Z
    .end local v3           #oldWidth:I
    :cond_5
    return-void

    :cond_6
    move v1, v5

    .line 9720
    goto :goto_0

    .line 9730
    .restart local v1       #matrixIsIdentity:Z
    :cond_7
    iget v2, p0, Landroid/view/View;->mLeft:I

    .line 9731
    .restart local v2       #minLeft:I
    const/4 v4, 0x0

    .restart local v4       #xLoc:I
    goto :goto_1

    .line 9737
    .end local v2           #minLeft:I
    .end local v4           #xLoc:I
    :cond_8
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setListViewItemTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "listViewItemTag"

    .prologue
    .line 15267
    iput-object p1, p0, Landroid/view/View;->mListViewItemTag:Ljava/lang/Object;

    .line 15268
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 2
    .parameter "longClickable"

    .prologue
    const/high16 v1, 0x20

    .line 6026
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6027
    return-void

    .line 6026
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setMeasuredDimension(II)V
    .locals 1
    .parameter "measuredWidth"
    .parameter "measuredHeight"

    .prologue
    .line 15585
    iput p1, p0, Landroid/view/View;->mMeasuredWidth:I

    .line 15586
    iput p2, p0, Landroid/view/View;->mMeasuredHeight:I

    .line 15588
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 15589
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0
    .parameter "minHeight"

    .prologue
    .line 15728
    iput p1, p0, Landroid/view/View;->mMinHeight:I

    .line 15729
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15730
    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .parameter "minWidth"

    .prologue
    .line 15757
    iput p1, p0, Landroid/view/View;->mMinWidth:I

    .line 15758
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15760
    return-void
.end method

.method public setNextFocusDownId(I)V
    .locals 0
    .parameter "nextFocusDownId"

    .prologue
    .line 5450
    iput p1, p0, Landroid/view/View;->mNextFocusDownId:I

    .line 5451
    return-void
.end method

.method public setNextFocusForwardId(I)V
    .locals 0
    .parameter "nextFocusForwardId"

    .prologue
    .line 5471
    iput p1, p0, Landroid/view/View;->mNextFocusForwardId:I

    .line 5472
    return-void
.end method

.method public setNextFocusLeftId(I)V
    .locals 0
    .parameter "nextFocusLeftId"

    .prologue
    .line 5387
    iput p1, p0, Landroid/view/View;->mNextFocusLeftId:I

    .line 5388
    return-void
.end method

.method public setNextFocusRightId(I)V
    .locals 0
    .parameter "nextFocusRightId"

    .prologue
    .line 5408
    iput p1, p0, Landroid/view/View;->mNextFocusRightId:I

    .line 5409
    return-void
.end method

.method public setNextFocusUpId(I)V
    .locals 0
    .parameter "nextFocusUpId"

    .prologue
    .line 5429
    iput p1, p0, Landroid/view/View;->mNextFocusUpId:I

    .line 5430
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4174
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4177
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 4178
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4212
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4213
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 4215
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 4216
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4375
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$602(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)Landroid/view/View$OnDragListener;

    .line 4376
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4089
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 4090
    return-void
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4356
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$402(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)Landroid/view/View$OnGenericMotionListener;

    .line 4357
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4364
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$502(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)Landroid/view/View$OnHoverListener;

    .line 4365
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4340
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$202(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)Landroid/view/View$OnKeyListener;

    .line 4341
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4198
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 4201
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/view/View$ListenerInfo;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 4202
    return-void
.end method

.method public setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 16057
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$702(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 16058
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 16059
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 16061
    :cond_0
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 4348
    invoke-virtual {p0}, Landroid/view/View;->getListenerInfo()Landroid/view/View$ListenerInfo;

    move-result-object v0

    #setter for: Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v0, p1}, Landroid/view/View$ListenerInfo;->access$302(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    .line 4349
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter "overScrollMode"

    .prologue
    .line 16569
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 16572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid overscroll mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16574
    :cond_0
    iput p1, p0, Landroid/view/View;->mOverScrollMode:I

    .line 16575
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v0, -0x1

    .line 14644
    iput v0, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 14645
    iput v0, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 14646
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 14648
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 14649
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    .line 14720
    iput p1, p0, Landroid/view/View;->mUserPaddingStart:I

    .line 14721
    iput p3, p0, Landroid/view/View;->mUserPaddingEnd:I

    .line 14722
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View;->mUserPaddingRelative:Z

    .line 14724
    invoke-virtual {p0}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 14730
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    .line 14732
    :goto_0
    return-void

    .line 14726
    :pswitch_0
    invoke-direct {p0, p3, p2, p1, p4}, Landroid/view/View;->internalSetPadding(IIII)V

    goto :goto_0

    .line 14724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPivotX(F)V
    .locals 6
    .parameter "pivotX"

    .prologue
    const/high16 v5, 0x1000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 9397
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9398
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9399
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9400
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9401
    invoke-virtual {p0, v3, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9402
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotX:F

    .line 9403
    iput-boolean v3, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9404
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9405
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9406
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setPivotX(F)V

    .line 9408
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1

    .line 9410
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9413
    :cond_1
    return-void
.end method

.method public setPivotY(F)V
    .locals 6
    .parameter "pivotY"

    .prologue
    const/high16 v5, 0x1000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 9447
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9448
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9449
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9450
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9451
    invoke-virtual {p0, v3, v4}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9452
    iput p1, v0, Landroid/view/View$TransformationInfo;->mPivotY:F

    .line 9453
    iput-boolean v3, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9454
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9455
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9456
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setPivotY(F)V

    .line 9458
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_1

    .line 9460
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9463
    :cond_1
    return-void
.end method

.method public setPressed(Z)V
    .locals 4
    .parameter "pressed"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6039
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_1

    move v2, v0

    :goto_0
    if-eq p1, v2, :cond_2

    .line 6041
    .local v0, needsRefresh:Z
    :goto_1
    if-eqz p1, :cond_3

    .line 6042
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    .line 6047
    :goto_2
    if-eqz v0, :cond_0

    .line 6048
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6050
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetPressed(Z)V

    .line 6051
    return-void

    .end local v0           #needsRefresh:Z
    :cond_1
    move v2, v1

    .line 6039
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 6044
    .restart local v0       #needsRefresh:Z
    :cond_3
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_2
.end method

.method public final setRight(I)V
    .locals 10
    .parameter "right"

    .prologue
    const/high16 v9, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 9785
    iget v6, p0, Landroid/view/View;->mRight:I

    if-eq p1, v6, :cond_5

    .line 9786
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9787
    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v6}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_0
    move v1, v5

    .line 9789
    .local v1, matrixIsIdentity:Z
    :goto_0
    if-eqz v1, :cond_8

    .line 9790
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_1

    .line 9792
    iget v6, p0, Landroid/view/View;->mRight:I

    if-ge p1, v6, :cond_7

    .line 9793
    iget v2, p0, Landroid/view/View;->mRight:I

    .line 9797
    .local v2, maxRight:I
    :goto_1
    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v6, v2, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 9804
    .end local v2           #maxRight:I
    :cond_1
    :goto_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v4, v6

    .line 9805
    .local v3, oldWidth:I
    iget v4, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int v0, v4, v6

    .line 9807
    .local v0, height:I
    iput p1, p0, Landroid/view/View;->mRight:I

    .line 9808
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v4, :cond_2

    .line 9809
    iget-object v4, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v6, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v4, v6}, Landroid/view/DisplayList;->setRight(I)V

    .line 9812
    :cond_2
    iget v4, p0, Landroid/view/View;->mRight:I

    iget v6, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4, v0, v3, v0}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 9814
    if-nez v1, :cond_4

    .line 9815
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v6, 0x2000

    and-int/2addr v4, v6

    if-nez v4, :cond_3

    .line 9817
    iget-object v4, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v5, v4, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9819
    :cond_3
    iget v4, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9820
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    .line 9822
    :cond_4
    iput-boolean v5, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9823
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9824
    iget v4, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_5

    .line 9826
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9829
    .end local v0           #height:I
    .end local v1           #matrixIsIdentity:Z
    .end local v3           #oldWidth:I
    :cond_5
    return-void

    :cond_6
    move v1, v4

    .line 9787
    goto :goto_0

    .line 9795
    .restart local v1       #matrixIsIdentity:Z
    :cond_7
    move v2, p1

    .restart local v2       #maxRight:I
    goto :goto_1

    .line 9801
    .end local v2           #maxRight:I
    :cond_8
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setRotation(F)V
    .locals 5
    .parameter "rotation"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9158
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9159
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9160
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9162
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9163
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotation:F

    .line 9164
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9165
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9166
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9167
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotation(F)V

    .line 9169
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9171
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9174
    :cond_1
    return-void
.end method

.method public setRotationX(F)V
    .locals 5
    .parameter "rotationX"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9261
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9262
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9263
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9264
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9265
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationX:F

    .line 9266
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9267
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9268
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9269
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotationX(F)V

    .line 9271
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9273
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9276
    :cond_1
    return-void
.end method

.method public setRotationY(F)V
    .locals 5
    .parameter "rotationY"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9210
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9211
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9212
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9213
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9214
    iput p1, v0, Landroid/view/View$TransformationInfo;->mRotationY:F

    .line 9215
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9216
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9217
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9218
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setRotationY(F)V

    .line 9220
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9222
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9225
    :cond_1
    return-void
.end method

.method public setSaveEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x1

    .line 6108
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6109
    return-void

    :cond_0
    move v0, v1

    .line 6108
    goto :goto_0
.end method

.method public setSaveFromParentEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/high16 v1, 0x2000

    .line 6169
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 6170
    return-void

    :cond_0
    move v0, v1

    .line 6169
    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 5
    .parameter "scaleX"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9304
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9305
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9306
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9307
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9308
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleX:F

    .line 9309
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9310
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9311
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9312
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setScaleX(F)V

    .line 9314
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9316
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9319
    :cond_1
    return-void
.end method

.method public setScaleY(F)V
    .locals 5
    .parameter "scaleY"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9347
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9348
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9349
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9350
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9351
    iput p1, v0, Landroid/view/View$TransformationInfo;->mScaleY:F

    .line 9352
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9353
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9354
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9355
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setScaleY(F)V

    .line 9357
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9359
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9362
    :cond_1
    return-void
.end method

.method public setScrollBarDefaultDelayBeforeFade(I)V
    .locals 1
    .parameter "scrollBarDefaultDelayBeforeFade"

    .prologue
    .line 11254
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarDefaultDelayBeforeFade:I

    .line 11255
    return-void
.end method

.method public setScrollBarFadeDuration(I)V
    .locals 1
    .parameter "scrollBarFadeDuration"

    .prologue
    .line 11278
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarFadeDuration:I

    .line 11279
    return-void
.end method

.method public setScrollBarSize(I)V
    .locals 1
    .parameter "scrollBarSize"

    .prologue
    .line 11302
    invoke-direct {p0}, Landroid/view/View;->getScrollCache()Landroid/view/View$ScrollabilityCache;

    move-result-object v0

    iput p1, v0, Landroid/view/View$ScrollabilityCache;->scrollBarSize:I

    .line 11303
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 3
    .parameter "style"

    .prologue
    const/high16 v2, 0x300

    .line 11325
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v2

    if-eq p1, v0, :cond_0

    .line 11326
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    const v1, -0x3000001

    and-int/2addr v0, v1

    and-int v1, p1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11327
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11328
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11330
    :cond_0
    return-void
.end method

.method public setScrollContainer(Z)V
    .locals 2
    .parameter "isScrollContainer"

    .prologue
    const/high16 v1, 0x10

    .line 5294
    if-eqz p1, :cond_1

    .line 5295
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 5296
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5297
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5299
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 5306
    :goto_0
    return-void

    .line 5301
    :cond_1
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 5302
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5304
    :cond_2
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x180001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    goto :goto_0
.end method

.method public setScrollX(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 8798
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 8799
    return-void
.end method

.method public setScrollY(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 8808
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    .line 8809
    return-void
.end method

.method public setScrollbarFadingEnabled(Z)V
    .locals 2
    .parameter "fadeScrollbars"

    .prologue
    .line 11211
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11212
    iget-object v0, p0, Landroid/view/View;->mScrollCache:Landroid/view/View$ScrollabilityCache;

    .line 11213
    .local v0, scrollabilityCache:Landroid/view/View$ScrollabilityCache;
    iput-boolean p1, v0, Landroid/view/View$ScrollabilityCache;->fadeScrollBars:Z

    .line 11214
    if-eqz p1, :cond_0

    .line 11215
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    .line 11219
    :goto_0
    return-void

    .line 11217
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/View$ScrollabilityCache;->state:I

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .parameter "selected"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 14839
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    if-eq v1, p1, :cond_2

    .line 14840
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 14841
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/view/View;->resetPressedState()V

    .line 14842
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Z)V

    .line 14843
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 14844
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    .line 14845
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14846
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 14849
    :cond_2
    return-void

    :cond_3
    move v1, v0

    .line 14839
    goto :goto_0
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 2
    .parameter "soundEffectsEnabled"

    .prologue
    const/high16 v1, 0x800

    .line 5751
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5752
    return-void

    .line 5751
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSystemUiVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 16004
    iget v0, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq p1, v0, :cond_0

    .line 16005
    iput p1, p0, Landroid/view/View;->mSystemUiVisibility:I

    .line 16006
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v0, :cond_0

    .line 16007
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 16010
    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 15309
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 15310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be an application-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15314
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 15315
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 15253
    iput-object p1, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    .line 15254
    return-void
.end method

.method public setTagInternal(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 15324
    ushr-int/lit8 v0, p1, 0x18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 15325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key must be a framework-specific resource id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15329
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;->setKeyedTag(ILjava/lang/Object;)V

    .line 15330
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 3
    .parameter "textAlignment"

    .prologue
    .line 16834
    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 16836
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    const v1, -0xe001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16837
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextAlignment()V

    .line 16839
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0xd

    const v2, 0xe000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16841
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16842
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 16844
    :cond_0
    return-void
.end method

.method public setTextDirection(I)V
    .locals 2
    .parameter "textDirection"

    .prologue
    .line 16648
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 16650
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/lit16 v0, v0, -0x1c1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16651
    invoke-virtual {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 16653
    iget v0, p0, Landroid/view/View;->mPrivateFlags2:I

    shl-int/lit8 v1, p1, 0x6

    and-int/lit16 v1, v1, 0x1c0

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/View;->mPrivateFlags2:I

    .line 16655
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 16656
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 16658
    :cond_0
    return-void
.end method

.method public final setTop(I)V
    .locals 10
    .parameter "top"

    .prologue
    const/high16 v9, 0x1000

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 9578
    iget v7, p0, Landroid/view/View;->mTop:I

    if-eq p1, v7, :cond_5

    .line 9579
    invoke-direct {p0}, Landroid/view/View;->updateMatrix()V

    .line 9580
    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    #getter for: Landroid/view/View$TransformationInfo;->mMatrixIsIdentity:Z
    invoke-static {v7}, Landroid/view/View$TransformationInfo;->access$1200(Landroid/view/View$TransformationInfo;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    move v0, v6

    .line 9582
    .local v0, matrixIsIdentity:Z
    :goto_0
    if-eqz v0, :cond_8

    .line 9583
    iget-object v7, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_1

    .line 9586
    iget v7, p0, Landroid/view/View;->mTop:I

    if-ge p1, v7, :cond_7

    .line 9587
    move v1, p1

    .line 9588
    .local v1, minTop:I
    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v4, p1, v7

    .line 9593
    .local v4, yLoc:I
    :goto_1
    iget v7, p0, Landroid/view/View;->mRight:I

    iget v8, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v8, v1

    invoke-virtual {p0, v5, v4, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 9600
    .end local v1           #minTop:I
    .end local v4           #yLoc:I
    :cond_1
    :goto_2
    iget v5, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int v3, v5, v7

    .line 9601
    .local v3, width:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int v2, v5, v7

    .line 9603
    .local v2, oldHeight:I
    iput p1, p0, Landroid/view/View;->mTop:I

    .line 9604
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v5, :cond_2

    .line 9605
    iget-object v5, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    iget v7, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v5, v7}, Landroid/view/DisplayList;->setTop(I)V

    .line 9608
    :cond_2
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v7, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v7

    invoke-virtual {p0, v3, v5, v3, v2}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 9610
    if-nez v0, :cond_4

    .line 9611
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x2000

    and-int/2addr v5, v7

    if-nez v5, :cond_3

    .line 9613
    iget-object v5, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iput-boolean v6, v5, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9615
    :cond_3
    iget v5, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/view/View;->mPrivateFlags:I

    .line 9616
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 9618
    :cond_4
    iput-boolean v6, p0, Landroid/view/View;->mBackgroundSizeChanged:Z

    .line 9619
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9620
    iget v5, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v5, v9

    if-ne v5, v9, :cond_5

    .line 9622
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9625
    .end local v0           #matrixIsIdentity:Z
    .end local v2           #oldHeight:I
    .end local v3           #width:I
    :cond_5
    return-void

    :cond_6
    move v0, v5

    .line 9580
    goto :goto_0

    .line 9590
    .restart local v0       #matrixIsIdentity:Z
    :cond_7
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 9591
    .restart local v1       #minTop:I
    const/4 v4, 0x0

    .restart local v4       #yLoc:I
    goto :goto_1

    .line 9597
    .end local v1           #minTop:I
    .end local v4           #yLoc:I
    :cond_8
    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Z)V

    goto :goto_2
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 8537
    iput-object p1, p0, Landroid/view/View;->mTouchDelegate:Landroid/view/TouchDelegate;

    .line 8538
    return-void
.end method

.method public setTranslationX(F)V
    .locals 5
    .parameter "translationX"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9901
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9902
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9903
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9905
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9906
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationX:F

    .line 9907
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9908
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9909
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9910
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setTranslationX(F)V

    .line 9912
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9914
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9917
    :cond_1
    return-void
.end method

.method public setTranslationY(F)V
    .locals 5
    .parameter "translationY"

    .prologue
    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 9943
    invoke-virtual {p0}, Landroid/view/View;->ensureTransformationInfo()V

    .line 9944
    iget-object v0, p0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    .line 9945
    .local v0, info:Landroid/view/View$TransformationInfo;
    iget v1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 9946
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9947
    iput p1, v0, Landroid/view/View$TransformationInfo;->mTranslationY:F

    .line 9948
    iput-boolean v2, v0, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 9949
    invoke-virtual {p0, v3, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 9950
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v1, :cond_0

    .line 9951
    iget-object v1, p0, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    invoke-virtual {v1, p1}, Landroid/view/DisplayList;->setTranslationY(F)V

    .line 9953
    :cond_0
    iget v1, p0, Landroid/view/View;->mPrivateFlags2:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    .line 9955
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 9958
    :cond_1
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1
    .parameter "verticalFadingEdgeEnabled"

    .prologue
    .line 11069
    invoke-virtual {p0}, Landroid/view/View;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 11070
    if-eqz p1, :cond_0

    .line 11071
    invoke-direct {p0}, Landroid/view/View;->initScrollCache()V

    .line 11074
    :cond_0
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11076
    :cond_1
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .parameter "verticalScrollBarEnabled"

    .prologue
    .line 11189
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 11190
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    xor-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/View;->mViewFlags:I

    .line 11191
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 11192
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 11194
    :cond_0
    return-void
.end method

.method public setVerticalScrollBarPadding(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 11646
    iput-boolean p1, p0, Landroid/view/View;->mNeededToChangedScrollBarPosition:Z

    .line 11647
    return-void
.end method

.method public setVerticalScrollBarPaddingPosition(I)V
    .locals 0
    .parameter "paddingValue"

    .prologue
    .line 11651
    sput p1, Landroid/view/View;->mScrollBarPositionPadding:I

    .line 11652
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 4060
    iget v0, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 4061
    iput p1, p0, Landroid/view/View;->mVerticalScrollbarPosition:I

    .line 4062
    invoke-virtual {p0}, Landroid/view/View;->computeOpaqueFlags()V

    .line 4063
    invoke-virtual {p0}, Landroid/view/View;->resolvePadding()V

    .line 4065
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5660
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setFlags(II)V

    .line 5661
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 5662
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 5661
    goto :goto_0
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 2
    .parameter "willNotCacheDrawing"

    .prologue
    const/high16 v1, 0x2

    .line 5962
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5963
    return-void

    .line 5962
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWillNotDraw(Z)V
    .locals 2
    .parameter "willNotDraw"

    .prologue
    const/16 v1, 0x80

    .line 5939
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setFlags(II)V

    .line 5940
    return-void

    .line 5939
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setX(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 9851
    iget v0, p0, Landroid/view/View;->mLeft:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 9852
    return-void
.end method

.method public setY(F)V
    .locals 1
    .parameter "y"

    .prologue
    .line 9874
    iget v0, p0, Landroid/view/View;->mTop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 9875
    return-void
.end method

.method public showContextMenu()Z
    .locals 1

    .prologue
    .line 4302
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FFI)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 4316
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 4328
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4329
    .local v0, parent:Landroid/view/ViewParent;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4330
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 15778
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 15779
    invoke-virtual {p0, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 15780
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 15781
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Z)V

    .line 15782
    return-void
.end method

.method public final startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 23
    .parameter "data"
    .parameter "shadowBuilder"
    .parameter "myLocalState"
    .parameter "flags"

    .prologue
    .line 16255
    const/16 v19, 0x0

    .line 16257
    .local v19, okay:Z
    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    .line 16258
    .local v21, shadowSize:Landroid/graphics/Point;
    new-instance v22, Landroid/graphics/Point;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Point;-><init>()V

    .line 16259
    .local v22, shadowTouchPoint:Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 16261
    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ltz v3, :cond_0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_1

    .line 16263
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Drag shadow dimensions must not be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 16270
    :cond_1
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 16272
    .local v8, surface:Landroid/view/Surface;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 16276
    .local v11, token:Landroid/os/IBinder;
    if-eqz v11, :cond_2

    .line 16277
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 16279
    .local v17, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 16280
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16282
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 16285
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 16288
    .local v20, root:Landroid/view/ViewRootImpl;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 16291
    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 16293
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v3, Landroid/view/View$AttachInfo;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v3, Landroid/view/View$AttachInfo;->mWindow:Landroid/view/IWindow;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v3

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v3

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z

    move-result v19

    .line 16300
    invoke-virtual {v8}, Landroid/view/Surface;->release()V

    .line 16307
    .end local v11           #token:Landroid/os/IBinder;
    .end local v17           #canvas:Landroid/graphics/Canvas;
    .end local v20           #root:Landroid/view/ViewRootImpl;
    :cond_2
    :goto_0
    return v19

    .line 16282
    .restart local v11       #token:Landroid/os/IBinder;
    .restart local v17       #canvas:Landroid/graphics/Canvas;
    :catchall_0
    move-exception v3

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 16302
    .end local v11           #token:Landroid/os/IBinder;
    .end local v17           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v18

    .line 16303
    .local v18, e:Ljava/lang/Exception;
    const-string v3, "View"

    const-string v4, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16304
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_0
.end method

.method transformRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "rect"

    .prologue
    const/high16 v5, 0x3f00

    .line 10585
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10586
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 10587
    .local v0, boundingRect:Landroid/graphics/RectF;
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10588
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10589
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 10594
    .end local v0           #boundingRect:Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method unFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4518
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 4519
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4521
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v1, v0}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 4522
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 4524
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4525
    invoke-virtual {p0}, Landroid/view/View;->notifyAccessibilityStateChanged()V

    .line 4528
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "who"

    .prologue
    .line 14265
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 14266
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 14269
    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "who"
    .parameter "what"

    .prologue
    .line 14245
    invoke-virtual {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 14246
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 14247
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p1}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 14253
    :cond_0
    :goto_0
    return-void

    .line 14250
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl$RunQueue;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method updateLocalSystemUiVisibility(II)Z
    .locals 3
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 16076
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int v0, v1, v2

    .line 16077
    .local v0, val:I
    iget v1, p0, Landroid/view/View;->mSystemUiVisibility:I

    if-eq v0, v1, :cond_0

    .line 16078
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 16079
    const/4 v1, 0x1

    .line 16081
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 14301
    iget-object v0, p0, Landroid/view/View;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotCacheDrawing()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const/high16 v1, 0x2

    .line 5972
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willNotDraw()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 5949
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
