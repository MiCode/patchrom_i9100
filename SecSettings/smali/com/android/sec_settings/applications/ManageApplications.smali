.class public Lcom/android/sec_settings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/sec_settings/applications/AppClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/sec_settings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    }
.end annotation


# static fields
.field private static final isSupportInstallExternal:Z


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/android/sec_settings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDefaultListType:I

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mOptionsMenu:Landroid/view/Menu;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mShowBackground:Z

.field private mSortOrder:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/sec_settings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_AllowExternalApkUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/sec_settings/applications/ManageApplications;->isSupportInstallExternal:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 180
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mShowBackground:Z

    .line 493
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mDefaultListType:I

    .line 1291
    new-instance v0, Lcom/android/sec_settings/applications/ManageApplications$2;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/applications/ManageApplications$2;-><init>(Lcom/android/sec_settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/sec_settings/applications/ManageApplications;->isSupportInstallExternal:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/sec_settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/sec_settings/applications/ManageApplications;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mActivityResumed:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/sec_settings/applications/ManageApplications;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/sec_settings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/sec_settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/sec_settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 1044
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1045
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1048
    const-class v1, Lcom/android/sec_settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0905b0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1050
    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .locals 3

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 1137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1138
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0905d2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1139
    const v1, 0x7f0905d3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1140
    const v1, 0x7f0905d4

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1141
    const v1, 0x7f09012d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1143
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1145
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1026
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mApplicationsState:Lcom/android/sec_settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1029
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1159
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1161
    .local v3, nm:Landroid/app/INotificationManager;
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v4

    .line 1162
    .local v4, npm:Landroid/net/NetworkPolicyManager;
    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1163
    .local v5, handler:Landroid/os/Handler;
    new-instance v0, Lcom/android/sec_settings/applications/ManageApplications$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/applications/ManageApplications$1;-><init>(Lcom/android/sec_settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/applications/ManageApplications$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1224
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v3           #nm:Landroid/app/INotificationManager;
    .end local v4           #npm:Landroid/net/NetworkPolicyManager;
    .end local v5           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 851
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 853
    invoke-virtual {p0, v7}, Lcom/android/sec_settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 855
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/sec_settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mApplicationsState:Lcom/android/sec_settings/applications/ApplicationsState;

    .line 856
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 857
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    :goto_0
    if-nez v0, :cond_0

    .line 862
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 864
    :cond_0
    const-class v1, Lcom/android/sec_settings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".RunningServices"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    move v1, v7

    .line 877
    :goto_1
    if-eqz p1, :cond_9

    .line 878
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    .line 879
    const-string v0, "defaultListType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 880
    if-eq v0, v5, :cond_8

    .line 881
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mShowBackground:Z

    .line 884
    :goto_3
    iput v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mDefaultListType:I

    .line 886
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/sec_settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 888
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v7}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 890
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 891
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0905f2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 893
    new-instance v0, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mApplicationsState:Lcom/android/sec_settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905d9

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/sec_settings/applications/ManageApplications;Lcom/android/sec_settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/sec_settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 896
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    sget-boolean v0, Lcom/android/sec_settings/applications/ManageApplications;->isSupportInstallExternal:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v7

    .line 901
    :cond_2
    if-nez v4, :cond_3

    .line 903
    new-instance v0, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mApplicationsState:Lcom/android/sec_settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905db

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object v1, p0

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/sec_settings/applications/ManageApplications;Lcom/android/sec_settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/sec_settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 906
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    :cond_3
    new-instance v0, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mApplicationsState:Lcom/android/sec_settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905da

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/sec_settings/applications/ManageApplications;Lcom/android/sec_settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/sec_settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 912
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    new-instance v0, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    iget-object v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mApplicationsState:Lcom/android/sec_settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0905d8

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v4, v8

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;-><init>(Lcom/android/sec_settings/applications/ManageApplications;Lcom/android/sec_settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/sec_settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 917
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    return-void

    .line 859
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 867
    :cond_5
    const-class v1, Lcom/android/sec_settings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ".StorageUse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 870
    :cond_6
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    move v1, v8

    .line 871
    goto/16 :goto_1

    .line 872
    :cond_7
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v8

    .line 874
    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_3

    :cond_a
    move v1, v4

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1054
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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iput-object p1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1058
    const v0, 0x7f0905cd

    invoke-interface {p1, v3, v6, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02016e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1061
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f0905ce

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02016f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1064
    const/4 v0, 0x6

    const v1, 0x7f0905cf

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1066
    const/4 v0, 0x7

    const v1, 0x7f0905d0

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1068
    const/16 v0, 0x8

    const v1, 0x7f0905d1

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0203b3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1071
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1072
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 924
    iput-object p1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 926
    iget-object v5, p0, Lcom/android/sec_settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040085

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 928
    .local v2, rootView:Landroid/view/View;
    iput-object p2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 929
    iput-object v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 931
    const v5, 0x7f0b015b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/sec_settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 932
    new-instance v0, Lcom/android/sec_settings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/android/sec_settings/applications/ManageApplications;)V

    .line 933
    .local v0, adapter:Lcom/android/sec_settings/applications/ManageApplications$MyPagerAdapter;
    iget-object v5, p0, Lcom/android/sec_settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 934
    iget-object v5, p0, Lcom/android/sec_settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 935
    const v5, 0x7f0b015c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/PagerTabStrip;

    .line 936
    .local v4, tabs:Landroid/support/v4/view/PagerTabStrip;
    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColorResource(I)V

    .line 940
    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 941
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 944
    :cond_0
    if-eqz p3, :cond_1

    const-string v5, "resetDialog"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 945
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->buildResetDialog()V

    .line 948
    :cond_1
    if-nez p3, :cond_2

    .line 950
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 951
    iget-object v5, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    .line 952
    .local v3, tab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    iget v5, v3, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mListType:I

    iget v6, p0, Lcom/android/sec_settings/applications/ManageApplications;->mDefaultListType:I

    if-ne v5, v6, :cond_3

    .line 953
    iget-object v5, p0, Lcom/android/sec_settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 959
    .end local v1           #i:I
    .end local v3           #tab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    :cond_2
    return-object v2

    .line 950
    .restart local v1       #i:I
    .restart local v3       #tab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1087
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1088
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1082
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 1010
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1012
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 1013
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1014
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1019
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->detachView()V

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1022
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_0

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1152
    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/android/sec_settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "tab"
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/sec_settings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1256
    .local p2, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p1, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/sec_settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/sec_settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/sec_settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p4, :cond_0

    .line 1257
    iget-object v1, p1, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/sec_settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p4}, Lcom/android/sec_settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1258
    .local v0, entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1259
    invoke-direct {p0}, Lcom/android/sec_settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 1261
    .end local v0           #entry:Lcom/android/sec_settings/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1229
    .local v0, menuId:I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    .line 1230
    :cond_0
    iput v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    .line 1231
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/sec_settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    .line 1232
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/android/sec_settings/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v3}, Lcom/android/sec_settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1250
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->updateOptionsMenu()V

    move v1, v2

    .line 1251
    :cond_2
    return v1

    .line 1234
    :cond_3
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    .line 1235
    iput-boolean v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mShowBackground:Z

    .line 1236
    iget-object v3, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/sec_settings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/sec_settings/applications/ManageApplications$TabInfo;)Lcom/android/sec_settings/applications/RunningProcessesView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1237
    iget-object v3, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/sec_settings/applications/RunningProcessesView;
    invoke-static {v3}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/sec_settings/applications/ManageApplications$TabInfo;)Lcom/android/sec_settings/applications/RunningProcessesView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/sec_settings/applications/RunningProcessesView;->mAdapter:Lcom/android/sec_settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/sec_settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1239
    :cond_4
    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 1240
    iput-boolean v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mShowBackground:Z

    .line 1241
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/sec_settings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/sec_settings/applications/ManageApplications$TabInfo;)Lcom/android/sec_settings/applications/RunningProcessesView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1242
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    #getter for: Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/sec_settings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/sec_settings/applications/ManageApplications$TabInfo;)Lcom/android/sec_settings/applications/RunningProcessesView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/sec_settings/applications/RunningProcessesView;->mAdapter:Lcom/android/sec_settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_0

    .line 1244
    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 1245
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 990
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 991
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mActivityResumed:Z

    .line 992
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->pause()V

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1077
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 969
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 970
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mActivityResumed:Z

    .line 971
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 972
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 973
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 977
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 978
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 979
    iget v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 980
    const-string v0, "defaultListType"

    iget v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mDefaultListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 982
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/sec_settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 983
    iget-object v0, p0, Lcom/android/sec_settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 984
    const-string v0, "resetDialog"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 986
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 964
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 965
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 999
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1006
    return-void
.end method

.method tabForType(I)Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    .locals 3
    .parameter "type"

    .prologue
    .line 1032
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1033
    iget-object v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    .line 1034
    .local v1, tab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    iget v2, v1, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v2, p1, :cond_0

    .line 1038
    .end local v1           #tab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    :goto_1
    return-object v1

    .line 1032
    .restart local v1       #tab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1038
    .end local v1           #tab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateCurrentTab(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 1264
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    .line 1265
    .local v3, tab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    iput-object v3, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    .line 1268
    iget-boolean v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v4, :cond_1

    .line 1269
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/android/sec_settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/sec_settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/android/sec_settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 1270
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    iget v5, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v4, v5}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->resume(I)V

    .line 1274
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1275
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    .line 1276
    .local v2, t:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    if-eq v2, v4, :cond_0

    .line 1277
    invoke-virtual {v2}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->pause()V

    .line 1274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1272
    .end local v1           #i:I
    .end local v2           #t:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->pause()V

    goto :goto_0

    .line 1281
    .restart local v1       #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 1282
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1283
    invoke-virtual {p0}, Lcom/android/sec_settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1284
    .local v0, host:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 1285
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1287
    :cond_3
    return-void
.end method

.method updateOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1091
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1099
    :cond_0
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mCurTab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    iget v4, v4, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne v4, v3, :cond_3

    .line 1100
    invoke-virtual {p0, v3}, Lcom/android/sec_settings/applications/ManageApplications;->tabForType(I)Lcom/android/sec_settings/applications/ManageApplications$TabInfo;

    move-result-object v1

    .line 1101
    .local v1, tab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    if-eqz v1, :cond_1

    #getter for: Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/sec_settings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/sec_settings/applications/ManageApplications$TabInfo;)Lcom/android/sec_settings/applications/RunningProcessesView;

    move-result-object v4

    if-eqz v4, :cond_1

    #getter for: Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/android/sec_settings/applications/RunningProcessesView;
    invoke-static {v1}, Lcom/android/sec_settings/applications/ManageApplications$TabInfo;->access$1100(Lcom/android/sec_settings/applications/ManageApplications$TabInfo;)Lcom/android/sec_settings/applications/RunningProcessesView;

    move-result-object v4

    iget-object v4, v4, Lcom/android/sec_settings/applications/RunningProcessesView;->mAdapter:Lcom/android/sec_settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v4}, Lcom/android/sec_settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 1103
    .local v0, showingBackground:Z
    :goto_1
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1104
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1105
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1106
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1107
    iget-object v3, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #showingBackground:Z
    :cond_1
    move v0, v2

    .line 1101
    goto :goto_1

    .restart local v0       #showingBackground:Z
    :cond_2
    move v3, v2

    .line 1106
    goto :goto_2

    .line 1109
    .end local v0           #showingBackground:Z
    .end local v1           #tab:Lcom/android/sec_settings/applications/ManageApplications$TabInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_4

    move v4, v3

    :goto_3
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1110
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iget v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v7, :cond_5

    move v4, v3

    :goto_4
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1111
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v4, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1112
    iget-object v4, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1113
    iget-object v2, p0, Lcom/android/sec_settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    move v4, v2

    .line 1109
    goto :goto_3

    :cond_5
    move v4, v2

    .line 1110
    goto :goto_4
.end method
