.class public Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;
.super Landroid/app/Activity;
.source "LockScreenShortcutSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static DEFAULT_CURSOR_WIDTH:I

.field static ICON_5_CURSOR_WIDTH:I

.field static MAX_SHORTCUT_ICON:I


# instance fields
.field private Addition_Icon:Landroid/widget/ImageView;

.field private Addition_IconBar:Landroid/widget/ImageView;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAddButton:Landroid/widget/ImageView;

.field private mAddButtonPositionBar:Landroid/widget/ImageView;

.field private mAdditionImage:Z

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

.field mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

.field private mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIconChangeAnimator:Landroid/animation/Animator;

.field mIconDragListner:Landroid/view/View$OnDragListener;

.field private mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

.field private mIconSize:I

.field private mIsOnDragging:Z

.field private mIsOnSelecting:Z

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mNumOfSavedShortcut:I

.field private mOnDragItem:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPositionBar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPositionBarDragListner:Landroid/view/View$OnDragListener;

.field private mShortCutButton:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mShortCutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutAddListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    .line 80
    sput v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->DEFAULT_CURSOR_WIDTH:I

    .line 81
    sput v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->ICON_5_CURSOR_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 90
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    .line 91
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Addition_Icon:Landroid/widget/ImageView;

    .line 92
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->Addition_IconBar:Landroid/widget/ImageView;

    .line 97
    iput v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 98
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    .line 99
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 100
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    .line 101
    iput v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    .line 102
    iput-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    .line 104
    iput-boolean v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    .line 355
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$1;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortcutAddListener:Landroid/view/View$OnClickListener;

    .line 748
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$2;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    .line 776
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$3;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 799
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$4;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    .line 816
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$5;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    .line 844
    new-instance v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings$6;-><init>(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnDragging:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/DeleteView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;)Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDragShadowBuilder:Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->changeShortCut(Landroid/widget/ImageView;)V

    return-void
.end method

.method private addShortcut(ILandroid/content/pm/ResolveInfo;)V
    .locals 8
    .parameter "droped_position"
    .parameter "new_shortcut"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0b014e

    .line 490
    iget v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 492
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 494
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 495
    .local v1, inflater:Landroid/view/LayoutInflater;
    mul-int/lit8 v0, p1, 0x2

    .line 497
    .local v0, add_position:I
    const v4, 0x7f04007c

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 498
    .local v3, shorcutIcon:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    const v4, 0x7f0b014c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 499
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 506
    const v4, 0x7f04007e

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 508
    .local v2, positionBar:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 509
    sget v4, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 510
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 512
    :cond_0
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 514
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    invoke-direct {p0, v6, v5}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 516
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 518
    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 519
    return-void
.end method

.method private adjustCursorWidth()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 665
    sget v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->DEFAULT_CURSOR_WIDTH:I

    .line 666
    .local v0, cursor_width:I
    sget v2, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    if-le v2, v3, :cond_3

    .line 667
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-lt v2, v3, :cond_0

    .line 668
    sget v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->ICON_5_CURSOR_WIDTH:I

    .line 671
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-gt v1, v2, :cond_1

    .line 672
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 673
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 671
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 677
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 678
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 681
    :cond_2
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 684
    .end local v1           #i:I
    :cond_3
    return-void
.end method

.method private changeShortCut(Landroid/widget/ImageView;)V
    .locals 6
    .parameter "iv"

    .prologue
    .line 434
    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "changeShortCut"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, dropItemPosition:I
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 437
    .local v1, numOfPositionBar:I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    :cond_0
    if-lt v0, v1, :cond_2

    .line 441
    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "Cannot find dropped position"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_1
    return-void

    .line 437
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_2
    const-string v3, "LockScreenShortcutSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mOnDragItem : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , dropItemPosition : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    if-ne v0, v3, :cond_3

    .line 448
    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "dropItemPosition == mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 450
    :cond_3
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    if-le v0, v3, :cond_5

    .line 451
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_4

    .line 452
    const-string v3, "LockScreenShortcutSettings"

    const-string v4, "dropItemPosition > mOnDragItem / Nothing to change position because dropped position is nearby DragItem"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 455
    :cond_4
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 456
    .local v2, temp_shortcutlist:Landroid/content/pm/ResolveInfo;
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-direct {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    .line 457
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    .line 463
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    .line 464
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V

    goto :goto_1

    .line 459
    .end local v2           #temp_shortcutlist:Landroid/content/pm/ResolveInfo;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 460
    .restart local v2       #temp_shortcutlist:Landroid/content/pm/ResolveInfo;
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mOnDragItem:I

    invoke-direct {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    .line 461
    invoke-direct {p0, v0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    goto :goto_2
.end method

.method private loadAppIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "iconResId"
    .parameter "packageName"

    .prologue
    .line 416
    const-string v5, "LockScreenShortcutSettings"

    const-string v6, "loadAppIcon (2)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v3, 0x0

    .line 419
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 420
    .local v0, appRes:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 421
    .local v4, iconDpi:I
    if-eqz v0, :cond_0

    .line 422
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v5, v4}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v5

    invoke-virtual {v0, p1, v5}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 423
    .local v1, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v5, v1}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 429
    .end local v0           #appRes:Landroid/content/res/Resources;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #iconDpi:I
    :cond_0
    :goto_0
    return-object v3

    .line 425
    :catch_0
    move-exception v2

    .line 426
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "LockScreenShortcutSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAppIcon : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "activityInfo"
    .parameter "iconResId"

    .prologue
    .line 396
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "loadAppIcon (1)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 398
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 399
    if-gtz p2, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 405
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    if-ge v1, v2, :cond_1

    .line 406
    if-gtz p2, :cond_3

    .line 407
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 412
    :goto_0
    return-object v1

    .line 402
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 409
    :cond_3
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private removeShortcut(I)V
    .locals 2
    .parameter "item_position"

    .prologue
    .line 481
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 482
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 483
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 484
    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 485
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method private saveShortcutList()V
    .locals 6

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_shortcut_number_of_apps"

    iget v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 471
    const-string v2, ""

    .line 472
    .local v2, shortcut_app_list:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v0, v3, :cond_0

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, shortcut_app:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v1           #shortcut_app:Ljava/lang/String;
    :cond_0
    const-string v3, "LockScreenShortcutSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shortcut_app_list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_shortcut_app_list"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 478
    return-void
.end method

.method private setEnable(Z)V
    .locals 5
    .parameter "desiredState"

    .prologue
    const/4 v4, 0x0

    .line 362
    if-eqz p1, :cond_3

    .line 363
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 364
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v0, v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 366
    .local v1, shortcutIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    .end local v1           #shortcutIcon:Landroid/widget/ImageView;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 375
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    :cond_2
    :goto_1
    return-void

    .line 378
    .end local v0           #i:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 379
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v0, v2, :cond_5

    .line 380
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 381
    .restart local v1       #shortcutIcon:Landroid/widget/ImageView;
    if-eqz v1, :cond_4

    .line 382
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 379
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 389
    .end local v1           #shortcutIcon:Landroid/widget/ImageView;
    :cond_5
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 390
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private showAddButton(Z)V
    .locals 6
    .parameter "remove_state"

    .prologue
    const/4 v5, 0x0

    .line 633
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    sget v4, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    if-ge v3, v4, :cond_3

    .line 635
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 636
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    .line 637
    const v3, 0x7f04007c

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 638
    .local v1, addbtnlayout:Landroid/view/View;
    const v3, 0x7f0b014c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 639
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    const v4, 0x7f02032c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 640
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 643
    .end local v1           #addbtnlayout:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-nez v3, :cond_2

    .line 644
    const v3, 0x7f04007e

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 645
    .local v0, addbtnPositionBarLayout:Landroid/view/View;
    const v3, 0x7f0b014e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    .line 646
    sget v3, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 647
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 649
    :cond_1
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    .end local v0           #addbtnPositionBarLayout:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    :goto_0
    return-void

    .line 652
    :cond_3
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 653
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 654
    iput-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButton:Landroid/widget/ImageView;

    .line 656
    :cond_4
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 657
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 658
    iput-object v5, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAddButtonPositionBar:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "Drag started"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v15, 0x0

    .line 689
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 690
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 691
    move-object/from16 v0, p3

    invoke-virtual {v0, v7, v8}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 694
    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 697
    iget v1, v7, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v7, Landroid/graphics/Point;->y:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->x:I

    if-ltz v1, :cond_0

    iget v1, v8, Landroid/graphics/Point;->y:I

    if-gez v1, :cond_1

    .line 698
    :cond_0
    const-string v1, "LockScreenShortcutSettings"

    const-string v2, "Drag shadow dimensions must not be negative"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v1, 0x0

    .line 745
    :goto_0
    return v1

    .line 703
    :cond_1
    new-instance v6, Landroid/view/Surface;

    invoke-direct {v6}, Landroid/view/Surface;-><init>()V

    .line 705
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 706
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 707
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 709
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mWindow"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 710
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 711
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindow;

    .line 713
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mSession"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 714
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 715
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowSession;

    .line 718
    iget v4, v7, Landroid/graphics/Point;->x:I

    iget v5, v7, Landroid/graphics/Point;->y:I

    move/from16 v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v9

    .line 720
    if-eqz v9, :cond_2

    .line 721
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->setSurface(Landroid/view/Surface;)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->draw()V

    .line 724
    const-class v3, Landroid/view/View;

    const-string v4, "getViewRootImpl"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 725
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 726
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    .line 729
    const-class v4, Landroid/view/ViewRootImpl;

    const-string v5, "setLocalDragState"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/Object;

    aput-object v12, v10, v11

    invoke-virtual {v4, v5, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 730
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 731
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p4, v5, v10

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-virtual {v3, v7}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 736
    iget v3, v7, Landroid/graphics/Point;->x:I

    int-to-float v10, v3

    iget v3, v7, Landroid/graphics/Point;->y:I

    int-to-float v11, v3

    iget v3, v8, Landroid/graphics/Point;->x:I

    int-to-float v12, v3

    iget v3, v8, Landroid/graphics/Point;->y:I

    int-to-float v13, v3

    move-object v7, v1

    move-object v8, v2

    move-object/from16 v14, p2

    invoke-interface/range {v7 .. v14}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto/16 :goto_0

    .line 740
    :catch_0
    move-exception v1

    .line 741
    const-string v2, "LockScreenShortcutSettings"

    const-string v3, "Unable to initiate drag"

    invoke-static {v2, v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    invoke-virtual {v6}, Landroid/view/Surface;->destroy()V

    :cond_2
    move v1, v15

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 110
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIsOnSelecting:Z

    .line 111
    const/16 v7, 0x65

    if-ne p1, v7, :cond_1

    const/4 v7, -0x1

    if-ne p2, v7, :cond_1

    .line 112
    const-string v7, "selected_package"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 113
    .local v6, selected_package:Ljava/lang/String;
    const-string v7, "selected_activity"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    .local v5, selected_activity:Ljava/lang/String;
    const-string v7, "clicked_view_index"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 115
    .local v2, clicked_view_index:I
    const-string v7, "LockScreenShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selected_package : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v7, "LockScreenShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selected_activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v7, "LockScreenShortcutSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clicked_view_index : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, LauncherIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x20

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 124
    .local v4, resolve_info:Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #resolve_info:Landroid/content/pm/ResolveInfo;
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 131
    .restart local v4       #resolve_info:Landroid/content/pm/ResolveInfo;
    :cond_0
    iget v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    if-ge v2, v7, :cond_3

    .line 132
    invoke-direct {p0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->removeShortcut(I)V

    .line 133
    invoke-direct {p0, v2, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    .line 138
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->saveShortcutList()V

    .line 142
    .end local v0           #LauncherIntent:Landroid/content/Intent;
    .end local v1           #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #clicked_view_index:I
    .end local v3           #i:I
    .end local v4           #resolve_info:Landroid/content/pm/ResolveInfo;
    .end local v5           #selected_activity:Ljava/lang/String;
    .end local v6           #selected_package:Ljava/lang/String;
    :cond_1
    return-void

    .line 124
    .restart local v0       #LauncherIntent:Landroid/content/Intent;
    .restart local v1       #appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2       #clicked_view_index:I
    .restart local v3       #i:I
    .restart local v4       #resolve_info:Landroid/content/pm/ResolveInfo;
    .restart local v5       #selected_activity:Ljava/lang/String;
    .restart local v6       #selected_package:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->addShortcut(ILandroid/content/pm/ResolveInfo;)V

    .line 136
    iget-boolean v7, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    invoke-direct {p0, v7}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_shortcut"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    invoke-direct {p0, p2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setEnable(Z)V

    .line 353
    return-void

    .line 350
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 36
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const-string v30, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/view/WindowManager;

    invoke-interface/range {v30 .. v30}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 150
    .local v10, display:Landroid/view/Display;
    const-string v30, "LockScreenShortcutSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "LCD getWidth : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v30, "LockScreenShortcutSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "LCD getHeight : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v30, "LockScreenShortcutSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "LCD orientation : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v10}, Landroid/view/Display;->getOrientation()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v10}, Landroid/view/Display;->getOrientation()I

    move-result v30

    rem-int/lit8 v30, v30, 0x2

    if-nez v30, :cond_0

    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v30

    const/16 v31, 0x1e0

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_1

    :cond_0
    invoke-virtual {v10}, Landroid/view/Display;->getOrientation()I

    move-result v30

    rem-int/lit8 v30, v30, 0x2

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v30

    const/16 v31, 0x1e0

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_3

    .line 155
    :cond_1
    const/16 v30, 0x5

    sput v30, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    .line 162
    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0f001e

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    sput v30, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->DEFAULT_CURSOR_WIDTH:I

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0f001f

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    sput v30, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->ICON_5_CURSOR_WIDTH:I

    .line 174
    const v30, 0x7f040081

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setContentView(I)V

    .line 176
    const-string v30, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 177
    .local v14, inflater:Landroid/view/LayoutInflater;
    new-instance v30, Landroid/widget/Switch;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f0f0002

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 180
    .local v22, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v22

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    const/16 v31, 0x10

    const/16 v32, 0x10

    invoke-virtual/range {v30 .. v32}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v31, v0

    new-instance v32, Landroid/app/ActionBar$LayoutParams;

    const/16 v33, -0x2

    const/16 v34, -0x2

    const/16 v35, 0x15

    invoke-direct/range {v32 .. v35}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual/range {v30 .. v32}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    new-instance v30, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    .line 189
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    .line 190
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    .line 191
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    .line 192
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 195
    .local v25, resources:Landroid/content/res/Resources;
    const v30, 0x7f0f001c

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconSize:I

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "lock_screen_shortcut_number_of_apps"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 199
    const-string v30, "LockScreenShortcutSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mNumOfSavedShortcut : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "lock_screen_shortcut_app_list"

    invoke-static/range {v30 .. v31}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, app_list:Ljava/lang/String;
    const-string v30, "LockScreenShortcutSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "app_list : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v15, ""

    .line 204
    .local v15, intent_content:Ljava/lang/String;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v26, savedShortcutName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 206
    .local v13, index:I
    const/16 v19, 0x0

    .line 207
    .local v19, old_index:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_5

    .line 208
    move/from16 v19, v13

    .line 209
    const/16 v30, 0x3b

    move/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 210
    move/from16 v0, v19

    invoke-virtual {v8, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 211
    const/16 v30, 0x2f

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v20

    .line 212
    .local v20, package_index:I
    const/16 v30, 0x0

    move/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 213
    .local v21, package_name:Ljava/lang/String;
    add-int/lit8 v30, v20, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, activity_name:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v30, "LockScreenShortcutSettings"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Index ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ") : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " , package : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " , activity : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    add-int/lit8 v13, v13, 0x1

    .line 207
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 156
    .end local v6           #activity_name:Ljava/lang/String;
    .end local v8           #app_list:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #index:I
    .end local v14           #inflater:Landroid/view/LayoutInflater;
    .end local v15           #intent_content:Ljava/lang/String;
    .end local v19           #old_index:I
    .end local v20           #package_index:I
    .end local v21           #package_name:Ljava/lang/String;
    .end local v22           #padding:I
    .end local v25           #resources:Landroid/content/res/Resources;
    .end local v26           #savedShortcutName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string v30, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    const-string v30, "TMB"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    const-string v30, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_4

    const-string v30, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 160
    :cond_4
    const/16 v30, 0x4

    sput v30, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    goto/16 :goto_0

    .line 220
    .restart local v8       #app_list:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #index:I
    .restart local v14       #inflater:Landroid/view/LayoutInflater;
    .restart local v15       #intent_content:Ljava/lang/String;
    .restart local v19       #old_index:I
    .restart local v22       #padding:I
    .restart local v25       #resources:Landroid/content/res/Resources;
    .restart local v26       #savedShortcutName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 221
    new-instance v5, Landroid/content/Intent;

    const-string v30, "android.intent.action.MAIN"

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v5, LauncherIntent:Landroid/content/Intent;
    const-string v30, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    const/16 v31, 0x20

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 225
    .local v7, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v18, 0x1e

    .line 226
    .local v18, maximum_cache:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 227
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    .line 229
    :cond_6
    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v12, v0, :cond_7

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconCache:Ljava/util/HashMap;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v33

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 233
    :cond_7
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_a

    .line 234
    const/16 v16, 0x0

    .local v16, j:I
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 235
    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 236
    const-string v31, "LockScreenShortcutSettings"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "savedShortcutName : "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 233
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 242
    .end local v16           #j:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 243
    const-string v30, "LockScreenShortcutSettings"

    const-string v31, "mShortCutList.size() < mNumOfSavedShortcut)"

    invoke-static/range {v30 .. v31}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    .line 247
    :cond_b
    const v30, 0x7f0b0152

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 249
    .local v11, guideTextView:Landroid/widget/TextView;
    const-string v17, ".\n"

    .line 250
    .local v17, linefeed:Ljava/lang/String;
    const-string v30, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 251
    const-string v17, "\n"

    .line 252
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 255
    :cond_c
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const v31, 0x7f090c9b

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const v31, 0x7f090c9c

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, content_string:Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const v30, 0x7f0b0153

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    .line 259
    const v30, 0x7f0b0154

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteAreaDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    .line 263
    const/4 v12, 0x0

    .line 264
    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mNumOfSavedShortcut:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v12, v0, :cond_e

    .line 270
    const v30, 0x7f04007e

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 272
    .local v24, positionBarLayout:Landroid/view/View;
    const v30, 0x7f0b014e

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 273
    .local v23, positionBar:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 274
    sget v30, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    .line 275
    const/16 v30, 0x1e

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 277
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    const v30, 0x7f04007c

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    .line 281
    .local v27, shorcutIconLayout:Landroid/view/View;
    const v30, 0x7f0b014c

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 282
    .local v28, shortcutIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v30

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->loadAppIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mShortCutButton:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 296
    .end local v23           #positionBar:Landroid/widget/ImageView;
    .end local v24           #positionBarLayout:Landroid/view/View;
    .end local v27           #shorcutIconLayout:Landroid/view/View;
    .end local v28           #shortcutIcon:Landroid/widget/ImageView;
    :cond_e
    const v30, 0x7f04007e

    const/16 v31, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 298
    .restart local v24       #positionBarLayout:Landroid/view/View;
    const v30, 0x7f0b014e

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 299
    .restart local v23       #positionBar:Landroid/widget/ImageView;
    sget v30, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->MAX_SHORTCUT_ICON:I

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    .line 300
    const/16 v30, 0x1e

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 302
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBarDragListner:Landroid/view/View$OnDragListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mPositionBar:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mAdditionImage:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->showAddButton(Z)V

    .line 309
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->adjustCursorWidth()V

    .line 312
    new-instance v29, Landroid/animation/LayoutTransition;

    invoke-direct/range {v29 .. v29}, Landroid/animation/LayoutTransition;-><init>()V

    .line 313
    .local v29, transition:Landroid/animation/LayoutTransition;
    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconChangeAnimator:Landroid/animation/Animator;

    .line 314
    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mIconChangeAnimator:Landroid/animation/Animator;

    move-object/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mMainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 316
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lock_screen_shortcut"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v2, v4

    .line 322
    .local v2, state:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 323
    invoke-direct {p0, v2}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->setEnable(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    if-eqz v3, :cond_2

    .line 331
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 332
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 333
    .local v1, rotation:I
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/LockScreenShortcutSettings;->mDeleteArea:Lcom/android/settings/lockscreenshortcut/DeleteView;

    if-eq v1, v4, :cond_0

    const/4 v6, 0x3

    if-ne v1, v6, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setOrienationMode(Z)V

    .line 335
    .end local v0           #d:Landroid/view/Display;
    .end local v1           #rotation:I
    :cond_2
    return-void

    .end local v2           #state:Z
    :cond_3
    move v2, v5

    .line 321
    goto :goto_0
.end method
