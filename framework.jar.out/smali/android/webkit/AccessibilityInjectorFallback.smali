.class Landroid/webkit/AccessibilityInjectorFallback;
.super Ljava/lang/Object;
.source "AccessibilityInjectorFallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    }
.end annotation


# static fields
.field private static final ACTION_PERFORM_AXIS_TRANSITION:I = 0x3

.field private static final ACTION_SET_CURRENT_AXIS:I = 0x0

.field private static final ACTION_TRAVERSE_CURRENT_AXIS:I = 0x1

.field private static final ACTION_TRAVERSE_DEFAULT_WEB_VIEW_BEHAVIOR_AXIS:I = 0x4

.field private static final ACTION_TRAVERSE_GIVEN_AXIS:I = 0x2

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInjector"

.field private static final NAVIGATION_AXIS_CHARACTER:I = 0x0

.field private static final NAVIGATION_AXIS_DEFAULT_WEB_VIEW_BEHAVIOR:I = 0x7

.field private static final NAVIGATION_AXIS_DOCUMENT:I = 0x6

.field private static final NAVIGATION_AXIS_HEADING:I = 0x3

.field private static final NAVIGATION_AXIS_PARENT_FIRST_CHILD:I = 0x5

.field private static final NAVIGATION_AXIS_SENTENCE:I = 0x2

.field private static final NAVIGATION_AXIS_SIBLING:I = 0x5

.field private static final NAVIGATION_AXIS_WORD:I = 0x1

.field private static final NAVIGATION_DIRECTION_BACKWARD:I = 0x0

.field private static final NAVIGATION_DIRECTION_FORWARD:I = 0x1

.field private static sBindings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentAxis:I

.field private mIsLastSelectionStringNull:Z

.field private mLastDirection:I

.field private mLastDownEventHandled:Z

.field private final mScheduledEventStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebView:Landroid/webkit/WebViewClassic;

.field private final mWebViewInternal:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEventStack:Ljava/util/Stack;

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    .line 123
    iput-object p1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    .line 124
    iget-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebViewInternal:Landroid/webkit/WebView;

    .line 125
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjectorFallback;->ensureWebContentKeyBindings()V

    .line 126
    return-void
.end method

.method private ensureWebContentKeyBindings()V
    .locals 14

    .prologue
    .line 424
    sget-object v11, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 459
    :cond_0
    return-void

    .line 428
    :cond_1
    iget-object v11, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_web_content_key_bindings"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 432
    .local v10, webContentKeyBindingsString:Ljava/lang/String;
    new-instance v9, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v11, 0x3b

    invoke-direct {v9, v11}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 433
    .local v9, semiColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v9, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 435
    :goto_0
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 436
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, bindingString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 438
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :cond_2
    const-string v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, keyValueArray:[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 444
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 448
    :cond_3
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 449
    .local v5, keyCodeAndModifiers:J
    const/4 v11, 0x1

    aget-object v11, v7, v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, actionStrings:[Ljava/lang/String;
    array-length v11, v0

    new-array v1, v11, [I

    .line 451
    .local v1, actions:[I
    const/4 v4, 0x0

    .local v4, i:I
    array-length v3, v1

    .local v3, count:I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 452
    aget-object v11, v0, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v1, v4

    .line 451
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 454
    :cond_4
    sget-object v11, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    new-instance v12, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;

    invoke-direct {v12, v5, v6, v1}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;-><init>(J[I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 455
    .end local v0           #actionStrings:[Ljava/lang/String;
    .end local v1           #actions:[I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #keyCodeAndModifiers:J
    :catch_0
    move-exception v8

    .line 456
    .local v8, nfe:Ljava/lang/NumberFormatException;
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static getAxisForGranularity(I)I
    .locals 1
    .parameter "granularity"

    .prologue
    const/4 v0, 0x2

    .line 321
    sparse-switch p0, :sswitch_data_0

    .line 334
    const/4 v0, -0x1

    :goto_0
    :sswitch_0
    return v0

    .line 323
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 325
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 332
    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    .line 321
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getDirectionForAction(I)I
    .locals 1
    .parameter "action"

    .prologue
    .line 301
    sparse-switch p0, :sswitch_data_0

    .line 309
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 304
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_0
        0x800 -> :sswitch_1
    .end sparse-switch
.end method

.method private getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .parameter "eventType"

    .prologue
    .line 415
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 416
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebViewInternal:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 417
    return-object v0
.end method

.method private isEnterActionKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 462
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

.method private performAxisTransition(IIZLjava/lang/String;)V
    .locals 1
    .parameter "fromAxis"
    .parameter "toAxis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    .line 253
    iget v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    if-ne v0, p1, :cond_0

    .line 254
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/AccessibilityInjectorFallback;->setCurrentAxis(IZLjava/lang/String;)V

    .line 256
    :cond_0
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 400
    const-string v1, "AccessibilityInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 405
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 408
    :cond_0
    return-void
.end method

.method private setCurrentAxis(IZLjava/lang/String;)V
    .locals 3
    .parameter "axis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    .line 233
    iput p1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    .line 234
    if-eqz p2, :cond_0

    .line 235
    const/16 v1, 0x4000

    invoke-direct {p0, v1}, Landroid/webkit/AccessibilityInjectorFallback;->getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 237
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 239
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjectorFallback;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 241
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private traverseCurrentAxis(IZLjava/lang/String;)Z
    .locals 1
    .parameter "direction"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    .line 269
    iget v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private traverseGivenAxis(IIZLjava/lang/String;)Z
    .locals 4
    .parameter "direction"
    .parameter "axis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v3, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    .line 350
    .local v1, webViewCore:Landroid/webkit/WebViewCore;
    if-nez v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v2

    .line 354
    :cond_1
    const/4 v0, 0x0

    .line 355
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz p3, :cond_2

    .line 356
    const/high16 v3, 0x2

    invoke-direct {p0, v3}, Landroid/webkit/AccessibilityInjectorFallback;->getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 361
    :cond_2
    iget-object v3, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const/4 v3, 0x7

    if-eq p2, v3, :cond_0

    .line 369
    const/16 v2, 0xbe

    invoke-virtual {v1, v2, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 370
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 135
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/webkit/AccessibilityInjectorFallback;->isEnterActionKey(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 136
    const/4 v13, 0x0

    .line 221
    :goto_0
    return v13

    .line 139
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_0

    .line 143
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, binding:Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    sget-object v13, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;

    .line 147
    .local v4, candidate:Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    invoke-virtual {v4}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getKeyCode()I

    move-result v14

    if-ne v13, v14, :cond_2

    invoke-virtual {v4}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getModifiers()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 149
    move-object v3, v4

    .line 154
    .end local v4           #candidate:Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    :cond_3
    if-nez v3, :cond_4

    .line 155
    const/4 v13, 0x0

    goto :goto_0

    .line 158
    :cond_4
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual {v3}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getActionCount()I

    move-result v6

    .local v6, count:I
    :goto_1
    if-ge v9, v6, :cond_d

    .line 159
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getActionCode(I)I

    move-result v1

    .line 160
    .local v1, actionCode:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getAction(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, contentDescription:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 217
    const-string v13, "AccessibilityInjector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown action code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 163
    :pswitch_0
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v2

    .line 164
    .local v2, axis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    const/4 v11, 0x1

    .line 165
    .local v11, sendEvent:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v5}, Landroid/webkit/AccessibilityInjectorFallback;->setCurrentAxis(IZLjava/lang/String;)V

    .line 166
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_2

    .line 164
    .end local v11           #sendEvent:Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 169
    .end local v2           #axis:I
    :pswitch_1
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v7

    .line 171
    .local v7, direction:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    if-ne v7, v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    if-eqz v13, :cond_6

    .line 172
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    .line 173
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 175
    :cond_6
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    .line 176
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v11, 0x1

    .line 177
    .restart local v11       #sendEvent:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11, v5}, Landroid/webkit/AccessibilityInjectorFallback;->traverseCurrentAxis(IZLjava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_2

    .line 176
    .end local v11           #sendEvent:Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 181
    .end local v7           #direction:I
    :pswitch_2
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v7

    .line 183
    .restart local v7       #direction:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    if-ne v7, v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    if-eqz v13, :cond_8

    .line 184
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    .line 185
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 187
    :cond_8
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    .line 188
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v2

    .line 189
    .restart local v2       #axis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    const/4 v11, 0x1

    .line 190
    .restart local v11       #sendEvent:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v11, v5}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;)Z

    .line 191
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_2

    .line 189
    .end local v11           #sendEvent:Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 194
    .end local v2           #axis:I
    .end local v7           #direction:I
    :pswitch_3
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v8

    .line 195
    .local v8, fromAxis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v12

    .line 196
    .local v12, toAxis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    const/4 v11, 0x1

    .line 197
    .restart local v11       #sendEvent:Z
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v11, v5}, Landroid/webkit/AccessibilityInjectorFallback;->performAxisTransition(IIZLjava/lang/String;)V

    .line 198
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 196
    .end local v11           #sendEvent:Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_6

    .line 204
    .end local v8           #fromAxis:I
    .end local v12           #toAxis:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_c

    .line 207
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    .line 208
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    const/4 v11, 0x1

    .line 209
    .restart local v11       #sendEvent:Z
    :goto_7
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    const/4 v14, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v11, v5}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;)Z

    .line 211
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 208
    .end local v11           #sendEvent:Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    .line 213
    :cond_c
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 221
    .end local v1           #actionCode:I
    .end local v5           #contentDescription:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onSelectionStringChange(Ljava/lang/String;)V
    .locals 5
    .parameter "selectionString"

    .prologue
    const/4 v2, 0x0

    .line 378
    const-string v1, "AccessibilityInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    .line 381
    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 380
    goto :goto_0

    .line 384
    :cond_2
    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 385
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 389
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjectorFallback;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 273
    sparse-switch p1, :sswitch_data_0

    .line 289
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 276
    :sswitch_0
    invoke-static {p1}, Landroid/webkit/AccessibilityInjectorFallback;->getDirectionForAction(I)I

    move-result v1

    .line 277
    .local v1, direction:I
    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/webkit/AccessibilityInjectorFallback;->getAxisForGranularity(I)I

    move-result v0

    .line 279
    .local v0, axis:I
    invoke-direct {p0, v1, v0, v3, v4}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 283
    .end local v0           #axis:I
    .end local v1           #direction:I
    :sswitch_1
    invoke-static {p1}, Landroid/webkit/AccessibilityInjectorFallback;->getDirectionForAction(I)I

    move-result v1

    .line 285
    .restart local v1       #direction:I
    const/4 v0, 0x2

    .line 286
    .restart local v0       #axis:I
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 273
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_1
    .end sparse-switch
.end method
