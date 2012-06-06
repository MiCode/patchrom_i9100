.class public Lcom/android/OriginalSettings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/OriginalSettings/applications/ManageApplications$AppViewHolder;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

.field mColorBar:Lcom/android/OriginalSettings/applications/LinearColorBar;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private mCreatedRunning:Z

.field private mCurView:I

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDefaultTab:Ljava/lang/String;

.field private mFilterApps:I

.field mFreeStorageText:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastFreeStorage:J

.field private mLastShowedInternalStorage:Z

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResumedRunning:Z

.field private mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

.field private mSDCardFileStats:Landroid/os/StatFs;

.field private mShowBackground:Z

.field private mSortOrder:I

.field mStorageChartLabel:Landroid/widget/TextView;

.field private mTabHost:Landroid/widget/TabHost;

.field mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 143
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 145
    iput v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFilterApps:I

    .line 184
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/ManageApplications$1;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/applications/ManageApplications;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private selectView(I)V
    .locals 7
    .parameter "which"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 884
    if-ne p1, v5, :cond_4

    .line 885
    iget-boolean v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->doPause()V

    .line 887
    iput-boolean v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResumedRunning:Z

    .line 889
    :cond_0
    iget v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurView:I

    if-eq v2, p1, :cond_1

    .line 890
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    invoke-virtual {v2, v6}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->setVisibility(I)V

    .line 891
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 894
    :cond_1
    iget-boolean v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v2, :cond_2

    .line 895
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFilterApps:I

    iget v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v2, v3, v4}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->resume(II)V

    .line 918
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurView:I

    .line 919
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 920
    .local v1, host:Landroid/app/Activity;
    if-eqz v1, :cond_3

    .line 921
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 923
    :cond_3
    return-void

    .line 897
    .end local v1           #host:Landroid/app/Activity;
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 898
    iget-boolean v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCreatedRunning:Z

    if-nez v2, :cond_5

    .line 899
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 900
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 901
    iput-boolean v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCreatedRunning:Z

    .line 903
    :cond_5
    const/4 v0, 0x1

    .line 904
    .local v0, haveData:Z
    iget-boolean v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResumedRunning:Z

    if-nez v2, :cond_6

    .line 905
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 906
    iput-boolean v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResumedRunning:Z

    .line 908
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 909
    iget v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurView:I

    if-eq v2, p1, :cond_2

    .line 910
    if-eqz v0, :cond_7

    .line 911
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->setVisibility(I)V

    .line 915
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 913
    :cond_7
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 703
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 704
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    .line 707
    const-class v1, Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0458

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 709
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 926
    iget v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 927
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 929
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 931
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 934
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 695
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 698
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 549
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 551
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 553
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    .line 554
    new-instance v0, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/OriginalSettings/applications/ManageApplications;Lcom/android/OriginalSettings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    .line 555
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 556
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 557
    const-string v1, "Downloaded"

    .line 558
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "classname"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_0
    if-nez v0, :cond_0

    .line 561
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_0
    const-class v2, Lcom/android/OriginalSettings/Settings$RunningServicesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".RunningServices"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 565
    :cond_1
    const-string v1, "Running"

    .line 577
    :cond_2
    :goto_1
    if-eqz p1, :cond_8

    .line 578
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 579
    const-string v0, "filterApps"

    iget v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFilterApps:I

    .line 580
    const-string v0, "defaultTabTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_7

    .line 582
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 585
    :goto_3
    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 587
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    .line 588
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    .line 590
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0490

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 591
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b048f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 592
    return-void

    .line 558
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 566
    :cond_4
    const-class v2, Lcom/android/OriginalSettings/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".StorageUse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 569
    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 570
    iput v5, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFilterApps:I

    .line 571
    const-string v1, "All"

    goto :goto_1

    .line 572
    :cond_6
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    const-string v1, "All"

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 713
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 717
    const/4 v0, 0x4

    const v1, 0x7f0b0473

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 720
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0b0474

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 723
    const/4 v0, 0x6

    const v1, 0x7f0b0475

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 725
    const/4 v0, 0x7

    const v1, 0x7f0b0476

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 727
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 728
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 598
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 599
    const v3, 0x7f040052

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 600
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v4, 0x7f0800f7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 601
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v4, 0x7f0800f1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 603
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 604
    .local v1, lv:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 605
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 608
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 609
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 610
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 611
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 612
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 613
    iput-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 614
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 615
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 616
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x7f0800f2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/applications/LinearColorBar;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mColorBar:Lcom/android/OriginalSettings/applications/LinearColorBar;

    .line 617
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x7f0800f4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    .line 618
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x7f0800f3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    .line 619
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v4, 0x7f0800f5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    .line 620
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v4, 0x7f0800f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/applications/RunningProcessesView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    .line 623
    iput-boolean v7, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResumedRunning:Z

    iput-boolean v7, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCreatedRunning:Z

    .line 624
    iput v7, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurView:I

    .line 626
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040054

    invoke-virtual {v3, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    .line 627
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 628
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    .line 629
    .local v2, tabHost:Landroid/widget/TabHost;
    const-string v3, "Downloaded"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b047b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020096

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 633
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 634
    const-string v3, "OnSdCard"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b047d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020098

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 639
    :cond_1
    const-string v3, "Running"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b047c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020097

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 643
    const-string v3, "All"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b047a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020095

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 647
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 651
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v7}, Lcom/android/OriginalSettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 653
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    return-object v3
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 738
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 785
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 786
    .local v0, entry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 787
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 788
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 766
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 767
    .local v0, menuId:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 768
    :cond_0
    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    .line 769
    iget v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurView:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 770
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFilterApps:I

    iget v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(II)V

    .line 779
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 780
    return v4

    .line 772
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 773
    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 774
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 775
    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 776
    iput-boolean v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    .line 777
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 683
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 684
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    .line 685
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 686
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/RunningProcessesView;->doPause()V

    .line 688
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mResumedRunning:Z

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 691
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 733
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 663
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 664
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mActivityResumed:Z

    .line 665
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->showCurrentTab()V

    .line 666
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 667
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 668
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 672
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 673
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 674
    const-string v0, "filterApps"

    iget v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 675
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "defautTabTag"

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 679
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 658
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 659
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->showCurrentTab()V

    .line 964
    return-void
.end method

.method public showCurrentTab()V
    .locals 5

    .prologue
    .line 937
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 939
    .local v1, tabId:Ljava/lang/String;
    const-string v2, "Downloaded"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 940
    const/4 v0, 0x1

    .line 956
    .local v0, newOption:I
    :goto_0
    iput v0, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFilterApps:I

    .line 957
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/ManageApplications;->selectView(I)V

    .line 958
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateStorageUsage()V

    .line 959
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->updateOptionsMenu()V

    .line 960
    .end local v0           #newOption:I
    :cond_0
    :goto_1
    return-void

    .line 941
    :cond_1
    const-string v2, "All"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 942
    const/4 v0, 0x0

    .restart local v0       #newOption:I
    goto :goto_0

    .line 943
    .end local v0           #newOption:I
    :cond_2
    const-string v2, "OnSdCard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 944
    const/4 v0, 0x2

    .restart local v0       #newOption:I
    goto :goto_0

    .line 945
    .end local v0           #newOption:I
    :cond_3
    const-string v2, "Running"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 949
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/ManageApplications;->selectView(I)V

    goto :goto_1
.end method

.method updateOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 741
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v3, :cond_0

    .line 762
    :goto_0
    return-void

    .line 749
    :cond_0
    iget v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurView:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 750
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/OriginalSettings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/RunningProcessesView;->mAdapter:Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 752
    .local v0, showingBackground:Z
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 753
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 754
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 755
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #showingBackground:Z
    :cond_2
    move v0, v1

    .line 750
    goto :goto_1

    .line 757
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    if-eq v3, v5, :cond_4

    move v3, v2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 758
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_5

    :goto_3
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 759
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 760
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v3, v1

    .line 757
    goto :goto_2

    :cond_5
    move v2, v1

    .line 758
    goto :goto_3
.end method

.method updateStorageUsage()V
    .locals 22

    .prologue
    .line 799
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mCurView:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    const-wide/16 v8, 0x0

    .line 804
    .local v8, freeStorage:J
    const-wide/16 v5, 0x0

    .line 805
    .local v5, appStorage:J
    const-wide/16 v13, 0x0

    .line 806
    .local v13, totalStorage:J
    const/4 v11, 0x0

    .line 808
    .local v11, newLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFilterApps:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 809
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 810
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 812
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0b0481

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 815
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v13, v17, v19

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v8, v17, v19

    .line 822
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 823
    .local v3, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v3, :cond_7

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 825
    .local v4, ae:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    iget-wide v0, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v5, v5, v17

    .line 823
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 828
    .end local v3           #N:I
    .end local v4           #ae:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .end local v10           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 829
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 831
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f0b0480

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    const-string v18, "/data"

    invoke-virtual/range {v17 .. v18}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 834
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v13, v17, v19

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v8, v17, v19

    .line 840
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v7

    .line 841
    .local v7, emulatedStorage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 842
    .restart local v3       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-ge v10, v3, :cond_6

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/OriginalSettings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 844
    .restart local v4       #ae:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    iget-wide v0, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v5, v5, v17

    .line 845
    if-eqz v7, :cond_5

    .line 846
    iget-wide v0, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v5, v5, v17

    .line 842
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 849
    .end local v4           #ae:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mApplicationsState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/OriginalSettings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v17

    add-long v8, v8, v17

    .line 851
    .end local v7           #emulatedStorage:Z
    :cond_7
    if-eqz v11, :cond_8

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    :cond_8
    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-lez v17, :cond_a

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mColorBar:Lcom/android/OriginalSettings/applications/LinearColorBar;

    move-object/from16 v17, v0

    sub-long v18, v13, v8

    sub-long v18, v18, v5

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    long-to-float v0, v13

    move/from16 v19, v0

    div-float v18, v18, v19

    long-to-float v0, v5

    move/from16 v19, v0

    long-to-float v0, v13

    move/from16 v20, v0

    div-float v19, v19, v20

    long-to-float v0, v8

    move/from16 v20, v0

    long-to-float v0, v13

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-virtual/range {v17 .. v20}, Lcom/android/OriginalSettings/applications/LinearColorBar;->setRatios(FFF)V

    .line 857
    sub-long v15, v13, v8

    .line 858
    .local v15, usedStorage:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v15

    if-eqz v17, :cond_9

    .line 859
    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastUsedStorage:J

    .line 860
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 861
    .local v12, sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b04ae

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    .end local v12           #sizeStr:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v8

    if-eqz v17, :cond_0

    .line 865
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastFreeStorage:J

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 867
    .restart local v12       #sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b04ad

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 871
    .end local v12           #sizeStr:Ljava/lang/String;
    .end local v15           #usedStorage:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mColorBar:Lcom/android/OriginalSettings/applications/LinearColorBar;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/android/OriginalSettings/applications/LinearColorBar;->setRatios(FFF)V

    .line 872
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v17, v0

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_b

    .line 873
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastUsedStorage:J

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v17, v0

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_0

    .line 877
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/OriginalSettings/applications/ManageApplications;->mLastFreeStorage:J

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 838
    .end local v3           #N:I
    .end local v10           #i:I
    :catch_0
    move-exception v17

    goto/16 :goto_3

    .line 819
    :catch_1
    move-exception v17

    goto/16 :goto_1
.end method
