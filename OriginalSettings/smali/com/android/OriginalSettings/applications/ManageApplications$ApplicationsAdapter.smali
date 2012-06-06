.class Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private mLastFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

.field private mWaitingForData:Z

.field private mWhichSize:I

.field final synthetic this$0:Lcom/android/OriginalSettings/applications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/OriginalSettings/applications/ApplicationsState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    const/4 v1, -0x1

    .line 279
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 254
    iput v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    iput v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 259
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 280
    iput-object p2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    .line 281
    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    .local p2, origEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v2, p2

    .line 395
    :cond_1
    return-object v2

    .line 384
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/OriginalSettings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, prefixStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, spacePrefixStr:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v2, newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 389
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 390
    .local v0, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, nlabel:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 392
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAppEntry(I)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 485
    if-nez p2, :cond_2

    .line 486
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$600(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f040053

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 490
    new-instance v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;

    invoke-direct {v1}, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;-><init>()V

    .line 491
    .local v1, holder:Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;
    const v2, 0x7f0800f8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 492
    const v2, 0x7f080004

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 493
    const v2, 0x7f0800f9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 494
    const v2, 0x7f0800fa

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 495
    const v2, 0x7f0800fb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 496
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 504
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 505
    .local v0, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 506
    :try_start_0
    iput-object v0, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 507
    iget-object v2, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 508
    iget-object v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v5, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v2, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_3

    const v2, 0x1060001

    :goto_1
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 513
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->ensureIcon(Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;)V

    .line 514
    iget-object v2, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 515
    iget-object v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    iget v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v2, v5}, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->updateSizeText(Lcom/android/OriginalSettings/applications/ManageApplications;I)V

    .line 519
    iget-object v5, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->disabled:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_4

    move v2, v4

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 524
    iget-object v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 525
    iget-object v4, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v2, v5

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 530
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 532
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    return-object p2

    .line 500
    .end local v0           #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .end local v1           #holder:Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;

    .restart local v1       #holder:Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;
    goto/16 :goto_0

    .line 509
    .restart local v0       #entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    :cond_3
    const v2, 0x1060005

    goto :goto_1

    :cond_4
    move v2, v3

    .line 519
    goto :goto_2

    :cond_5
    move v2, v3

    .line 525
    goto :goto_3

    .line 528
    :cond_6
    :try_start_1
    iget-object v2, v1, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4

    .line 530
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 456
    iget v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 459
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 544
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 424
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 434
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 435
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;

    .line 436
    .local v0, holder:Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;
    iget-object v2, v0, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    iget-object v3, v0, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 438
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    iget v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->updateSizeText(Lcom/android/OriginalSettings/applications/ManageApplications;I)V

    .line 439
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    iget-object v2, v0, Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$500(Lcom/android/OriginalSettings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 446
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateStorageUsage()V

    .line 452
    .end local v0           #holder:Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;
    :cond_1
    return-void

    .line 439
    .restart local v0       #holder:Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 434
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 406
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$400(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$400(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 409
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$300(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$300(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$400(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 415
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 416
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 417
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 418
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateStorageUsage()V

    .line 419
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .parameter "running"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 402
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 299
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->pause()V

    .line 301
    :cond_0
    return-void
.end method

.method public rebuild(II)V
    .locals 1
    .parameter "filter"
    .parameter "sort"

    .prologue
    .line 304
    iget v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p2, v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_0
    iput p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    .line 308
    iput p2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 309
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 8
    .parameter "eraseold"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 316
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 317
    .local v1, emulated:Z
    if-eqz v1, :cond_1

    .line 318
    iput v6, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 322
    :goto_0
    iget v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    packed-switch v4, :pswitch_data_0

    .line 333
    const/4 v3, 0x0

    .line 336
    .local v3, filterObj:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v4, :pswitch_data_1

    .line 351
    sget-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 354
    .local v0, comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v4, v3, v0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->rebuild(Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 356
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 377
    :goto_3
    return-void

    .line 320
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    .end local v2           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    .end local v3           #filterObj:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;
    :cond_1
    iput v7, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 324
    :pswitch_0
    sget-object v3, Lcom/android/OriginalSettings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;

    .line 325
    .restart local v3       #filterObj:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 327
    .end local v3           #filterObj:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v3, Lcom/android/OriginalSettings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;

    .line 328
    .restart local v3       #filterObj:Lcom/android/OriginalSettings/applications/ApplicationsState$AppFilter;
    if-nez v1, :cond_0

    .line 329
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 338
    :pswitch_2
    iget v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v4, :pswitch_data_2

    .line 346
    sget-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 347
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 340
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_3
    sget-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 341
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 343
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/android/OriginalSettings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 344
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 360
    .restart local v2       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    iput-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 361
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 362
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 366
    :goto_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 367
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateStorageUsage()V

    .line 369
    if-nez v2, :cond_4

    .line 370
    iput-boolean v7, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 371
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$300(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$400(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 364
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 374
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$300(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/OriginalSettings/applications/ManageApplications;

    #getter for: Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/OriginalSettings/applications/ManageApplications;->access$400(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 336
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    .line 338
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resume(II)V
    .locals 2
    .parameter "filter"
    .parameter "sort"

    .prologue
    const/4 v1, 0x1

    .line 285
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 286
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 287
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->resume(Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;)V

    .line 288
    iput p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    .line 289
    iput p2, p0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 290
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(II)V

    goto :goto_0
.end method
