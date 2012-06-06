.class public Lcom/android/OriginalSettings/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/OriginalSettings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeader:Landroid/widget/TextView;

.field mRootView:Landroid/view/View;

.field mServicesHeader:Landroid/widget/TextView;

.field mShowBackground:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/android/OriginalSettings/applications/RunningState;

.field mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 484
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 411
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/OriginalSettings/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails$1;-><init>(Lcom/android/OriginalSettings/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "comp"

    .prologue
    .line 478
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/android/OriginalSettings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/OriginalSettings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 480
    .local v0, newFragment:Landroid/app/DialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 481
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 482
    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    .locals 3
    .parameter "comp"

    .prologue
    .line 467
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;

    .line 469
    .local v0, ad:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v2, v0, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    .end local v0           #ad:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    :goto_1
    return-object v0

    .line 467
    .restart local v0       #ad:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v0           #ad:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addDetailViews()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 347
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 348
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 347
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 352
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 354
    iput-object v5, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 359
    iput-object v5, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 362
    :cond_2
    iput v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumServices:I

    .line 364
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_8

    .line 365
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 366
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v2, v4}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;Lcom/android/OriginalSettings/applications/RunningState$MergedItem;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 373
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v5, v2}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;Lcom/android/OriginalSettings/applications/RunningState$MergedItem;)V

    .line 376
    :cond_4
    const/4 v0, -0x1

    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 377
    if-gez v0, :cond_5

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v1, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    .line 379
    .local v1, pi:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;
    :goto_3
    iget v2, v1, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_6

    .line 376
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 377
    .end local v1           #pi:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    move-object v1, v2

    goto :goto_3

    .line 383
    .restart local v1       #pi:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;
    :cond_6
    if-gez v0, :cond_7

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_7
    move v2, v3

    goto :goto_5

    .line 386
    .end local v1           #pi:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;
    :cond_8
    return-void
.end method

.method addProcessDetailsView(Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;Z)V
    .locals 13
    .parameter "pi"
    .parameter "isMain"

    .prologue
    const/4 v12, 0x0

    .line 286
    iget v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v9, :cond_0

    .line 287
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040088

    iget-object v11, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    .line 289
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    const v10, 0x7f0b04b8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 290
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessesHeader:Landroid/widget/TextView;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 292
    :cond_0
    iget v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumProcesses:I

    .line 294
    new-instance v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/OriginalSettings/applications/RunningServiceDetails;)V

    .line 295
    .local v2, detail:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040085

    iget-object v11, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 297
    .local v5, root:Landroid/view/View;
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 298
    iput-object v5, v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 299
    new-instance v9, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v9, v5}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v9, v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    .line 300
    iget-object v9, v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v11, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, p1, v11}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/OriginalSettings/applications/RunningState;Lcom/android/OriginalSettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v9

    iput-object v9, v2, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    .line 302
    const v9, 0x7f0801a1

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 303
    .local v1, description:Landroid/widget/TextView;
    if-eqz p2, :cond_2

    .line 304
    const v9, 0x7f0b04bf

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(I)V

    .line 343
    :cond_1
    :goto_0
    iget-object v9, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    return-void

    .line 306
    :cond_2
    const/4 v8, 0x0

    .line 307
    .local v8, textid:I
    const/4 v3, 0x0

    .line 308
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v6, p1, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 309
    .local v6, rpi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v0, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 312
    .local v0, comp:Landroid/content/ComponentName;
    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v9, :pswitch_data_0

    .line 338
    :cond_3
    :goto_1
    if-eqz v8, :cond_1

    if-eqz v3, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-virtual {v9, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :pswitch_0
    const v8, 0x7f0b04c1

    .line 315
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    .line 319
    .local v4, prov:Landroid/content/pm/ProviderInfo;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v4}, Lcom/android/OriginalSettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 326
    .end local v4           #prov:Landroid/content/pm/ProviderInfo;
    :pswitch_1
    const v8, 0x7f0b04c0

    .line 327
    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    .line 329
    :try_start_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 331
    .local v7, serv:Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/android/OriginalSettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 333
    .end local v7           #serv:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v9

    goto :goto_1

    .line 321
    :catch_1
    move-exception v9

    goto :goto_1

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method addServiceDetailsView(Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;Lcom/android/OriginalSettings/applications/RunningState$MergedItem;)V
    .locals 13
    .parameter "si"
    .parameter "mi"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 214
    iget v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v7, :cond_0

    .line 215
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040088

    iget-object v11, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    .line 217
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    const v10, 0x7f0b04b7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 218
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mServicesHeader:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    :cond_0
    iget v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mNumServices:I

    .line 222
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 224
    .local v0, bi:Lcom/android/OriginalSettings/applications/RunningState$BaseItem;
    :goto_0
    new-instance v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/OriginalSettings/applications/RunningServiceDetails;)V

    .line 225
    .local v3, detail:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040086

    iget-object v11, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 227
    .local v6, root:Landroid/view/View;
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    iput-object v6, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 229
    iput-object p1, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;

    .line 230
    new-instance v7, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v7, v6}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    .line 231
    iget-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v10, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v11, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v0, v11}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/OriginalSettings/applications/RunningState;Lcom/android/OriginalSettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v7

    iput-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    .line 233
    if-eqz p1, :cond_1

    iget-object v7, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v7, :cond_1

    .line 234
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object v10, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v7, v10}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    .line 238
    :cond_1
    const v7, 0x7f0801a1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 239
    .local v2, description:Landroid/widget/TextView;
    if-eqz p1, :cond_3

    iget-object v7, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v7, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v10, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v11, v11, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v12, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v10, v11, v12}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_1
    const v7, 0x7f0801d6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    .line 263
    iget-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v10, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_7

    const v7, 0x7f0b04ba

    :goto_2
    invoke-virtual {v11, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const v7, 0x7f0801d7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 268
    iget-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v7, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const v10, 0x104045f

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setText(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "send_action_app_error"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 273
    .local v4, enabled:I
    if-eqz v4, :cond_9

    if-eqz p1, :cond_9

    .line 274
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v10, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v11, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v7, v10, v11}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 277
    iget-object v10, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v7, :cond_8

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 282
    :goto_4
    iget-object v7, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    return-void

    .end local v0           #bi:Lcom/android/OriginalSettings/applications/RunningState$BaseItem;
    .end local v2           #description:Landroid/widget/TextView;
    .end local v3           #detail:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    .end local v4           #enabled:I
    .end local v6           #root:Landroid/view/View;
    :cond_2
    move-object v0, p2

    .line 222
    goto/16 :goto_0

    .line 244
    .restart local v0       #bi:Lcom/android/OriginalSettings/applications/RunningState$BaseItem;
    .restart local v2       #description:Landroid/widget/TextView;
    .restart local v3       #detail:Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;
    .restart local v6       #root:Landroid/view/View;
    :cond_3
    iget-boolean v7, p2, Lcom/android/OriginalSettings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v7, :cond_4

    .line 245
    const v7, 0x7f0b04bd

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 246
    :cond_4
    iget-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_5

    .line 248
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v10, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 250
    .local v1, clientr:Landroid/content/res/Resources;
    iget-object v7, p1, Lcom/android/OriginalSettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v7, v7, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, label:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f0b04be

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    invoke-virtual {v7, v10, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 253
    .end local v1           #clientr:Landroid/content/res/Resources;
    .end local v5           #label:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_1

    .line 256
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    if-eqz p1, :cond_6

    const v7, 0x7f0b04bb

    :goto_5
    invoke-virtual {v10, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    const v7, 0x7f0b04bc

    goto :goto_5

    .line 264
    :cond_7
    const v7, 0x7f0b04b9

    goto/16 :goto_2

    .restart local v4       #enabled:I
    :cond_8
    move v7, v9

    .line 277
    goto :goto_3

    .line 279
    :cond_9
    iget-object v7, v3, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method ensureData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 531
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 532
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 533
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/applications/RunningState;->resume(Lcom/android/OriginalSettings/applications/RunningState$OnRefreshUiListener;)V

    .line 538
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/RunningState;->waitForData()V

    .line 542
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 544
    :cond_0
    return-void
.end method

.method findMergedItem()Z
    .locals 6

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, item:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    iget-boolean v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 195
    .local v3, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/RunningState$MergedItem;>;"
    :goto_0
    if-eqz v3, :cond_0

    .line 196
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 197
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    .line 198
    .local v2, mi:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    iget-object v4, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget v4, v4, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mUid:I

    iget v5, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mUid:I

    if-ne v4, v5, :cond_2

    iget-object v4, v2, Lcom/android/OriginalSettings/applications/RunningState$MergedItem;->mProcess:Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    move-object v1, v2

    .line 206
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    if-eq v4, v1, :cond_3

    .line 207
    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    .line 208
    const/4 v4, 0x1

    .line 210
    :goto_2
    return v4

    .line 193
    .end local v3           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/RunningState$MergedItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    .line 196
    .restart local v0       #i:I
    .restart local v2       #mi:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    .restart local v3       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/RunningState$MergedItem;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v0           #i:I
    .end local v2           #mi:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 424
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mUid:I

    .line 427
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 428
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mShowBackground:Z

    .line 430
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 431
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 433
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    .line 434
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 438
    const v1, 0x7f040084

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 440
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    .line 441
    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 442
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    const v2, 0x10805f2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 443
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 444
    new-instance v1, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    .line 448
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->ensureData()V

    .line 450
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 455
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mHaveData:Z

    .line 457
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/RunningState;->pause()V

    .line 458
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 557
    packed-switch p1, :pswitch_data_0

    .line 570
    :goto_0
    return-void

    .line 559
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 562
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 563
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 566
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 567
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 462
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 463
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->ensureData()V

    .line 464
    return-void
.end method

.method refreshUi(Z)V
    .locals 4
    .parameter "dataChanged"

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 p1, 0x1

    .line 392
    :cond_0
    if-eqz p1, :cond_1

    .line 393
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mState:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/OriginalSettings/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/OriginalSettings/applications/RunningState;Lcom/android/OriginalSettings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    .line 406
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->addDetailViews()V

    .line 408
    :cond_1
    :goto_1
    return-void

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v1, 0x7f0b04b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 403
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 550
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 551
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 550
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_1
    return-void
.end method
