.class final Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private final mLaunchedFromUid:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "intent"
    .parameter "initialIntents"
    .parameter
    .parameter "launchedFromUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p5, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 517
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 518
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 519
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 520
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 521
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 522
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 523
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 524
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 5
    .parameter "view"
    .parameter "info"

    .prologue
    .line 765
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 766
    .local v1, text:Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 767
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 768
    .local v0, icon:Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$600(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 770
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    :goto_0
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 776
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 778
    :cond_0
    iget-object v3, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    return-void

    .line 773
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .parameter
    .parameter "start"
    .parameter "end"
    .parameter "ro"
    .parameter "roLabel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 658
    .local p1, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 659
    .local v12, num:I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 661
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_0
    return-void

    .line 664
    :cond_1
    const/4 v14, 0x0

    .line 665
    .local v14, usePkg:Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 666
    .local v13, startApp:Ljava/lang/CharSequence;
    if-nez v13, :cond_2

    .line 667
    const/4 v14, 0x1

    .line 669
    :cond_2
    if-nez v14, :cond_5

    .line 671
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 673
    .local v7, duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 674
    add-int/lit8 v8, p2, 0x1

    .local v8, j:I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_4

    .line 675
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 676
    .local v10, jRi:Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 677
    .local v9, jApp:Ljava/lang/CharSequence;
    if-eqz v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 678
    :cond_3
    const/4 v14, 0x1

    .line 685
    .end local v9           #jApp:Ljava/lang/CharSequence;
    .end local v10           #jRi:Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 687
    .end local v7           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8           #j:I
    :cond_5
    move/from16 v11, p2

    .local v11, k:I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 688
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 689
    .local v3, add:Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7

    .line 692
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 681
    .end local v3           #add:Landroid/content/pm/ResolveInfo;
    .end local v11           #k:I
    .restart local v7       #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8       #j:I
    .restart local v9       #jApp:Ljava/lang/CharSequence;
    .restart local v10       #jRi:Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 674
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 701
    .end local v7           #duplicates:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8           #j:I
    .end local v9           #jApp:Ljava/lang/CharSequence;
    .end local v10           #jRi:Landroid/content/pm/ResolveInfo;
    .restart local v3       #add:Landroid/content/pm/ResolveInfo;
    .restart local v11       #k:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private rebuildList()V
    .locals 20

    .prologue
    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 543
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 571
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .local v13, N:I
    if-lez v13, :cond_11

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 575
    .local v11, r0:Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x1

    .local v16, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_7

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 583
    .local v3, ri:Landroid/content/pm/ResolveInfo;
    iget v1, v11, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_6

    .line 585
    :cond_1
    :goto_2
    move/from16 v0, v16

    if-ge v0, v13, :cond_6

    .line 586
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 587
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 545
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    .end local v11           #r0:Landroid/content/pm/ResolveInfo;
    .end local v13           #N:I
    .end local v16           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const v5, 0x10080

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$400(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x40

    :goto_3
    or-int/2addr v1, v5

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 554
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v16, v1, -0x1

    .restart local v16       #i:I
    :goto_4
    if-ltz v16, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 556
    .local v14, ai:Landroid/content/pm/ActivityInfo;
    iget-object v1, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, v2, v4, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v15

    .line 559
    .local v15, granted:I
    if-eqz v15, :cond_3

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 554
    :cond_3
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 545
    .end local v14           #ai:Landroid/content/pm/ActivityInfo;
    .end local v15           #granted:I
    .end local v16           #i:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 565
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 575
    .restart local v3       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v11       #r0:Landroid/content/pm/ResolveInfo;
    .restart local v13       #N:I
    .restart local v16       #i:I
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 591
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    :cond_7
    const/4 v1, 0x1

    if-le v13, v1, :cond_8

    .line 592
    new-instance v18, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 594
    .local v18, rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 597
    .end local v18           #rComparator:Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_c

    .line 601
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v1, v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_c

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v6, v1, v16

    .line 603
    .local v6, ii:Landroid/content/Intent;
    if-nez v6, :cond_9

    .line 601
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 606
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 608
    .restart local v14       #ai:Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_a

    .line 609
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 613
    :cond_a
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 614
    .restart local v3       #ri:Landroid/content/pm/ResolveInfo;
    iput-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 615
    instance-of v1, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_b

    move-object/from16 v17, v6

    .line 616
    check-cast v17, Landroid/content/pm/LabeledIntent;

    .line 617
    .local v17, li:Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 618
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 619
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 620
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 622
    .end local v17           #li:Landroid/content/pm/LabeledIntent;
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 629
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    .end local v6           #ii:Landroid/content/Intent;
    .end local v14           #ai:Landroid/content/pm/ActivityInfo;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #r0:Landroid/content/pm/ResolveInfo;
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 630
    .restart local v11       #r0:Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 631
    .local v9, start:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 632
    .local v12, r0Label:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivity;->access$602(Lcom/android/internal/app/ResolverActivity;Z)Z

    .line 633
    const/16 v16, 0x1

    :goto_7
    move/from16 v0, v16

    if-ge v0, v13, :cond_10

    .line 634
    if-nez v12, :cond_d

    .line 635
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 637
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 638
    .restart local v3       #ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 639
    .local v19, riLabel:Ljava/lang/CharSequence;
    if-nez v19, :cond_e

    .line 640
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 642
    :cond_e
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 633
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 645
    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    add-int/lit8 v10, v16, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 646
    move-object v11, v3

    .line 647
    move-object/from16 v12, v19

    .line 648
    move/from16 v9, v16

    goto :goto_8

    .line 651
    .end local v3           #ri:Landroid/content/pm/ResolveInfo;
    .end local v19           #riLabel:Ljava/lang/CharSequence;
    :cond_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mCurrentResolveList:Ljava/util/List;

    add-int/lit8 v10, v13, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 653
    .end local v9           #start:I
    .end local v11           #r0:Landroid/content/pm/ResolveInfo;
    .end local v12           #r0Label:Ljava/lang/CharSequence;
    .end local v13           #N:I
    .end local v16           #i:I
    :cond_11
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 738
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 742
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 747
    if-nez p2, :cond_1

    .line 748
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x109012a

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 754
    .local v2, view:Landroid/view/View;
    :goto_0
    const v3, 0x1020006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 755
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 756
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    #getter for: Lcom/android/internal/app/ResolverActivity;->mIconSize:I
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$700(Lcom/android/internal/app/ResolverActivity;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 760
    .end local v0           #icon:Landroid/widget/ImageView;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    .line 761
    return-object v2

    .line 751
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x10900cf

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0

    .line 758
    .end local v2           #view:Landroid/view/View;
    :cond_1
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_1
.end method

.method public handlePackagesChanged()V
    .locals 3

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v1

    .line 528
    .local v1, oldItemCount:I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 529
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 530
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 536
    .local v0, newItemCount:I
    if-eq v0, v1, :cond_2

    .line 537
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    .line 539
    :cond_2
    return-void
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .parameter "position"

    .prologue
    .line 717
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 718
    const/4 v2, 0x0

    .line 730
    :goto_0
    return-object v2

    .line 721
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 723
    .local v1, dri:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 725
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x300

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 727
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 728
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 723
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 710
    const/4 v0, 0x0

    .line 713
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
