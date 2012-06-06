.class Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;
.super Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchTutorialModule1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;
    }
.end annotation


# instance fields
.field private final mAllApps:Landroid/widget/GridView;

.field private final mAppsAdapter:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;

.field private final mHandler:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

.field private mTargetName:Ljava/lang/CharSequence;

.field private mTargetPosition:I

.field private mTouched:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/OriginalSettings/AccessibilityTutorialActivity;)V
    .locals 3
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 327
    const v0, 0x7f040001

    const v1, 0x7f0b06a1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TutorialModule;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/AccessibilityTutorialActivity;II)V

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTouched:I

    .line 330
    new-instance v0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;-><init>(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;Lcom/android/OriginalSettings/AccessibilityTutorialActivity$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    .line 332
    new-instance v0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;

    const v1, 0x7f040003

    const v2, 0x7f080004

    invoke-direct {v0, p1, v1, v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAppsAdapter:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;

    .line 334
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAppsAdapter:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 336
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    .line 337
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAppsAdapter:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 338
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 340
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->setSkipVisible(Z)V

    .line 343
    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;)Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    return v3

    .line 349
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 351
    iget v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTouched:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTouched:I

    .line 353
    iget v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTouched:I

    if-lt v0, v1, :cond_2

    .line 354
    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    .line 355
    const v0, 0x7f0b06a4

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    .line 361
    :cond_1
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 357
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTouched:I

    if-ne v0, v2, :cond_1

    .line 358
    const v0, 0x7f0b06a3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetPosition:I

    if-ne v0, v1, :cond_0

    .line 364
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 366
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->enteredTarget()V

    .line 367
    invoke-virtual {p0, v4, v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->exitedTarget()V

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x7f080004
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v2, 0x8

    const/4 v4, 0x1

    .line 380
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetPosition:I

    if-ne p3, v1, :cond_0

    .line 382
    invoke-virtual {p0, v2, v4}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    .line 383
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b069d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 385
    .local v0, nextText:Ljava/lang/CharSequence;
    const v1, 0x7f0b06a7

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    .line 386
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->setNextVisible(Z)V

    .line 388
    .end local v0           #nextText:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public onShown()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 392
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 393
    .local v0, first:I
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    .line 395
    .local v1, last:I
    iput v4, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetPosition:I

    .line 396
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAppsAdapter:Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;

    iget v3, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetPosition:I

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$AppsAdapter;->getLabel(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;

    .line 398
    const v2, 0x7f0b06a2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    .line 399
    invoke-virtual {p0, v5, v5}, Lcom/android/OriginalSettings/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    .line 400
    return-void
.end method
