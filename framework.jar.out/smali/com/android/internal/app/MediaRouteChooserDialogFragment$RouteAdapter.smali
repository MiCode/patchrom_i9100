.class Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaRouteChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RouteAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;
    }
.end annotation


# static fields
.field private static final VIEW_GROUPING_DONE:I = 0x4

.field private static final VIEW_GROUPING_ROUTE:I = 0x3

.field private static final VIEW_ROUTE:I = 0x2

.field private static final VIEW_SECTION_HEADER:I = 0x1

.field private static final VIEW_TOP_HEADER:I


# instance fields
.field private final mCatRouteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryEditingGroups:Landroid/media/MediaRouter$RouteCategory;

.field private mEditingGroup:Landroid/media/MediaRouter$RouteGroup;

.field private mIgnoreUpdates:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemPosition:I

.field private final mSortRouteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCatRouteList:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 230
    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;)Landroid/media/MediaRouter$RouteGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;Landroid/media/MediaRouter$RouteGroup;)Landroid/media/MediaRouter$RouteGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$RouteCategory;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Landroid/media/MediaRouter$RouteCategory;

    return-object p1
.end method


# virtual methods
.method addGroupEditingCategoryRoutes(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, from:Ljava/util/List;,"Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 314
    .local v6, topCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 315
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    .line 316
    .local v5, route:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    .line 317
    .local v0, group:Landroid/media/MediaRouter$RouteGroup;
    if-ne v0, v5, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v1

    .line 320
    .local v1, groupCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 321
    invoke-virtual {v0, v4}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 322
    .local v3, innerRoute:Landroid/media/MediaRouter$RouteInfo;
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 325
    .end local v1           #groupCount:I
    .end local v3           #innerRoute:Landroid/media/MediaRouter$RouteInfo;
    .end local v4           #j:I
    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    .end local v0           #group:Landroid/media/MediaRouter$RouteGroup;
    .end local v5           #route:Landroid/media/MediaRouter$RouteInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget-object v8, v8, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mComparator:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 332
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 333
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSortRouteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 335
    iget-object v7, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method addSelectableRoutes(Landroid/media/MediaRouter$RouteInfo;Ljava/util/List;)V
    .locals 4
    .parameter "selectedRoute"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaRouter$RouteInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 301
    .local v2, routeCount:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 302
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    .line 303
    .local v0, info:Landroid/media/MediaRouter$RouteInfo;
    if-ne v0, p1, :cond_0

    .line 304
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    .line 306
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v0           #info:Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method bindHeaderView(ILcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;)V
    .locals 3
    .parameter "position"
    .parameter "holder"

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteCategory;

    .line 483
    .local v0, cat:Landroid/media/MediaRouter$RouteCategory;
    iget-object v1, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->text1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter$RouteCategory;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    return-void
.end method

.method bindItemView(ILcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;)V
    .locals 12
    .parameter "position"
    .parameter "holder"

    .prologue
    const/4 v11, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 442
    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRouter$RouteInfo;

    .line 443
    .local v4, info:Landroid/media/MediaRouter$RouteInfo;
    iget-object v6, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->text1:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v10}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v5

    .line 445
    .local v5, status:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 446
    iget-object v6, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    :goto_0
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 452
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 454
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    iget-object v10, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v10}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 456
    :cond_0
    iget-object v6, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    iget-object v10, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v1

    .line 460
    .local v1, cat:Landroid/media/MediaRouter$RouteCategory;
    const/4 v0, 0x0

    .line 461
    .local v0, canGroup:Z
    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Landroid/media/MediaRouter$RouteCategory;

    if-ne v1, v6, :cond_7

    .line 462
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v2

    .line 463
    .local v2, group:Landroid/media/MediaRouter$RouteGroup;
    iget-object v10, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v6

    if-le v6, v9, :cond_5

    move v6, v9

    :goto_2
    invoke-virtual {v10, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 464
    iget-object v6, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;

    if-ne v2, v10, :cond_6

    :goto_3
    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 475
    .end local v2           #group:Landroid/media/MediaRouter$RouteGroup;
    :cond_1
    :goto_4
    iget-object v6, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupButton:Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    .line 476
    iget-object v6, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_a

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 477
    iget-object v6, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;

    iput p1, v6, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;->position:I

    .line 479
    :cond_2
    return-void

    .line 448
    .end local v0           #canGroup:Z
    .end local v1           #cat:Landroid/media/MediaRouter$RouteCategory;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v6, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v6, p2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    :cond_4
    move v6, v8

    .line 457
    goto :goto_1

    .restart local v0       #canGroup:Z
    .restart local v1       #cat:Landroid/media/MediaRouter$RouteCategory;
    .restart local v2       #group:Landroid/media/MediaRouter$RouteGroup;
    :cond_5
    move v6, v7

    .line 463
    goto :goto_2

    :cond_6
    move v9, v7

    .line 464
    goto :goto_3

    .line 466
    .end local v2           #group:Landroid/media/MediaRouter$RouteGroup;
    :cond_7
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteCategory;->isGroupable()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v4

    .line 467
    check-cast v2, Landroid/media/MediaRouter$RouteGroup;

    .line 468
    .restart local v2       #group:Landroid/media/MediaRouter$RouteGroup;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v6

    if-gt v6, v9, :cond_8

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItemViewType(I)I

    move-result v6

    if-eq v6, v11, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p1, v6, :cond_9

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v6, v11, :cond_9

    :cond_8
    move v0, v9

    :goto_6
    goto :goto_4

    :cond_9
    move v0, v7

    goto :goto_6

    .end local v2           #group:Landroid/media/MediaRouter$RouteGroup;
    :cond_a
    move v7, v8

    .line 476
    goto :goto_5
.end method

.method finishGrouping()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 539
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Landroid/media/MediaRouter$RouteCategory;

    .line 540
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 541
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 542
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    .line 543
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->scrollToSelectedItem()V

    .line 544
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 388
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 351
    .local v1, item:Ljava/lang/Object;
    instance-of v2, v1, Landroid/media/MediaRouter$RouteCategory;

    if-eqz v2, :cond_1

    .line 352
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 360
    :goto_0
    return v2

    .line 352
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 353
    :cond_1
    if-nez v1, :cond_2

    .line 354
    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 356
    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    .line 357
    .local v0, info:Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Landroid/media/MediaRouter$RouteCategory;

    if-ne v2, v3, :cond_3

    .line 358
    const/4 v2, 0x3

    goto :goto_0

    .line 360
    :cond_3
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItemViewType(I)I

    move-result v4

    .line 396
    .local v4, viewType:I
    if-nez p2, :cond_1

    .line 397
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$300(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$200()[I

    move-result-object v7

    aget v7, v7, v4

    invoke-virtual {v5, v7, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 398
    new-instance v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment$1;)V

    .line 399
    .local v2, holder:Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;
    iput p1, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->position:I

    .line 400
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->text1:Landroid/widget/TextView;

    .line 401
    const v5, 0x1020015

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->text2:Landroid/widget/TextView;

    .line 402
    const v5, 0x1020006

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 403
    const v5, 0x10203ab

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 404
    const v5, 0x10203aa

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupButton:Landroid/widget/ImageButton;

    .line 406
    iget-object v5, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_0

    .line 407
    new-instance v5, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;

    invoke-direct {v5, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;)V

    iput-object v5, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;

    .line 408
    iget-object v5, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupButton:Landroid/widget/ImageButton;

    iget-object v7, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->expandGroupListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$ExpandGroupListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    :cond_0
    move-object v1, p2

    .local v1, fview:Landroid/view/View;
    move-object v3, p3

    .line 412
    check-cast v3, Landroid/widget/ListView;

    .line 413
    .local v3, list:Landroid/widget/ListView;
    move-object v0, v2

    .line 414
    .local v0, fholder:Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;
    new-instance v5, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$1;

    invoke-direct {v5, p0, v3, v1, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter$1;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;Landroid/widget/ListView;Landroid/view/View;Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 425
    .end local v0           #fholder:Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;
    .end local v1           #fview:Landroid/view/View;
    .end local v3           #list:Landroid/widget/ListView;
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 436
    :goto_1
    iget v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    if-ne p1, v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {p2, v5}, Landroid/view/View;->setActivated(Z)V

    .line 438
    return-object p2

    .line 421
    .end local v2           #holder:Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;

    .line 422
    .restart local v2       #holder:Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;
    iput p1, v2, Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;->position:I

    goto :goto_0

    .line 428
    :pswitch_0
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->bindItemView(ILcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;)V

    goto :goto_1

    .line 432
    :pswitch_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->bindHeaderView(ILcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;)V

    goto :goto_1

    :cond_2
    move v5, v6

    .line 436
    goto :goto_2

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x5

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 377
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 375
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method isGrouping()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Landroid/media/MediaRouter$RouteCategory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    const/4 v9, 0x1

    .line 488
    invoke-virtual {p0, p3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItemViewType(I)I

    move-result v4

    .line 489
    .local v4, type:I
    if-eq v4, v9, :cond_0

    if-nez v4, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    .line 492
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->finishGrouping()V

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 496
    .local v1, item:Ljava/lang/Object;
    instance-of v6, v1, Landroid/media/MediaRouter$RouteInfo;

    if-eqz v6, :cond_0

    move-object v3, v1

    .line 501
    check-cast v3, Landroid/media/MediaRouter$RouteInfo;

    .line 502
    .local v3, route:Landroid/media/MediaRouter$RouteInfo;
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 503
    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget-object v6, v6, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget-object v7, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v7}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)I

    move-result v7

    invoke-virtual {v6, v7, v3}, Landroid/media/MediaRouter;->selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 504
    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    invoke-virtual {v6}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->dismiss()V

    goto :goto_0

    .line 505
    :cond_3
    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    move-object v0, p2

    .line 506
    check-cast v0, Landroid/widget/Checkable;

    .line 507
    .local v0, c:Landroid/widget/Checkable;
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v5

    .line 509
    .local v5, wasChecked:Z
    iput-boolean v9, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mIgnoreUpdates:Z

    .line 510
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v2

    .line 511
    .local v2, oldGroup:Landroid/media/MediaRouter$RouteGroup;
    if-nez v5, :cond_6

    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eq v2, v6, :cond_6

    .line 513
    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget-object v6, v6, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget-object v7, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v7}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v6

    if-ne v6, v2, :cond_4

    .line 516
    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget-object v6, v6, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget-object v7, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v7}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaRouter;->selectRouteInt(ILandroid/media/MediaRouter$RouteInfo;)V

    .line 518
    :cond_4
    invoke-virtual {v2, v3}, Landroid/media/MediaRouter$RouteGroup;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 519
    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v6, v3}, Landroid/media/MediaRouter$RouteGroup;->addRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 520
    invoke-interface {v0, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 528
    :cond_5
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mIgnoreUpdates:Z

    .line 529
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->update()V

    goto :goto_0

    .line 521
    :cond_6
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v6}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v6

    if-le v6, v9, :cond_5

    .line 522
    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mEditingGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v6, v3}, Landroid/media/MediaRouter$RouteGroup;->removeRoute(Landroid/media/MediaRouter$RouteInfo;)V

    .line 526
    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget-object v6, v6, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v6, v3}, Landroid/media/MediaRouter;->addRouteInt(Landroid/media/MediaRouter$RouteInfo;)V

    goto :goto_1
.end method

.method scrollToEditingGroup()V
    .locals 6

    .prologue
    .line 274
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Landroid/media/MediaRouter$RouteCategory;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v5

    if-nez v5, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const/4 v4, 0x0

    .line 277
    .local v4, pos:I
    const/4 v0, 0x0

    .line 278
    .local v0, bound:I
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 279
    .local v3, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 280
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 281
    .local v2, item:Ljava/lang/Object;
    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Landroid/media/MediaRouter$RouteCategory;

    if-ne v2, v5, :cond_2

    .line 282
    move v0, v1

    .line 284
    :cond_2
    if-nez v2, :cond_4

    .line 285
    move v4, v1

    .line 290
    .end local v2           #item:Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Landroid/widget/ListView;->smoothScrollToPosition(II)V

    goto :goto_0

    .line 279
    .restart local v2       #item:Ljava/lang/Object;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method scrollToSelectedItem()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    if-gez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method update()V
    .locals 8

    .prologue
    .line 243
    iget-boolean v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mIgnoreUpdates:Z

    if-eqz v5, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget-object v5, v5, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget-object v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I
    invoke-static {v6}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$000(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 248
    .local v4, selectedRoute:Landroid/media/MediaRouter$RouteInfo;
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    .line 251
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget-object v5, v5, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v5}, Landroid/media/MediaRouter;->getCategoryCount()I

    move-result v1

    .line 252
    .local v1, catCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 253
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    iget-object v5, v5, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v5, v2}, Landroid/media/MediaRouter;->getCategoryAt(I)Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    .line 254
    .local v0, cat:Landroid/media/MediaRouter$RouteCategory;
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCatRouteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Landroid/media/MediaRouter$RouteCategory;->getRoutes(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 256
    .local v3, routes:Ljava/util/List;,"Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mCategoryEditingGroups:Landroid/media/MediaRouter$RouteCategory;

    if-ne v0, v5, :cond_2

    .line 259
    invoke-virtual {p0, v3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->addGroupEditingCategoryRoutes(Ljava/util/List;)V

    .line 264
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->addSelectableRoutes(Landroid/media/MediaRouter$RouteInfo;Ljava/util/List;)V

    goto :goto_2

    .line 267
    .end local v0           #cat:Landroid/media/MediaRouter$RouteCategory;
    .end local v3           #routes:Ljava/util/List;,"Ljava/util/List<Landroid/media/MediaRouter$RouteInfo;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->notifyDataSetChanged()V

    .line 268
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    if-ltz v5, :cond_0

    .line 269
    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->this$0:Lcom/android/internal/app/MediaRouteChooserDialogFragment;

    #getter for: Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->access$100(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->mSelectedItemPosition:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method
