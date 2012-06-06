.class public Lcom/android/OriginalSettings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/DataUsageSummary$UidDetailTask;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/OriginalSettings/DataUsageSummary$AppUsageItem;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppDetailUids:[I

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/OriginalSettings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/OriginalSettings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

.field private mPolicyService:Landroid/net/INetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1343
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/OriginalSettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 201
    iput v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    .line 232
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 233
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 238
    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetailUids:[I

    .line 244
    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 245
    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 558
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$2;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 626
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$3;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 651
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$4;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1035
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$5;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1056
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$6;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1070
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$7;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1092
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$8;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1100
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$9;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1110
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$10;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1199
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$11;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1230
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$12;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1276
    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DataUsageSummary$13;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2028
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/OriginalSettings/DataUsageSummary;Lcom/android/OriginalSettings/net/ChartData;)Lcom/android/OriginalSettings/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$2900([II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->contains([II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/OriginalSettings/DataUsageSummary;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetailUids:[I

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/OriginalSettings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->setRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$400()Landroid/animation/LayoutTransition;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/DataUsageSummary;)Lcom/android/OriginalSettings/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 577
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 581
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 582
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2191
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2192
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2195
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2196
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2197
    const v2, 0x7f0b065d

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2200
    const v2, 0x7f0b065c

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2203
    const v0, 0x7f0b065b

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2206
    const v0, 0x7f0b0658

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2209
    const v0, 0x7f0b0659

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2212
    :cond_4
    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 638
    const-string v0, "mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 647
    :goto_0
    return-object v0

    .line 642
    :cond_0
    const-string v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    goto :goto_0

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    goto :goto_0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2007
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2008
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2020
    :goto_0
    return-object v0

    .line 2010
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2020
    goto :goto_0

    .line 2012
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 2014
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 2016
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 2018
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 2010
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static contains([II)Z
    .locals 5
    .parameter "haystack"
    .parameter "needle"

    .prologue
    .line 2253
    move-object v0, p0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 2254
    .local v3, value:I
    if-ne v3, p1, :cond_0

    .line 2255
    const/4 v4, 0x1

    .line 2258
    .end local v3           #value:I
    :goto_1
    return v4

    .line 2253
    .restart local v3       #value:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2258
    .end local v3           #value:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1347
    .line 1348
    if-eqz p5, :cond_0

    const-string v7, "UTC"

    .line 1350
    :goto_0
    sget-object v8, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1351
    :try_start_0
    sget-object v0, Lcom/android/OriginalSettings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1352
    sget-object v1, Lcom/android/OriginalSettings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1348
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1354
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1271
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1273
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppDetailPrimaryUid()I
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetailUids:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->getUidPolicy(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 904
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 899
    :catch_0
    move-exception v0

    .line 901
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "problem reading network policy"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 904
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 863
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 864
    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getRestrictBackground()Z
    .locals 4

    .prologue
    .line 877
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 880
    :goto_0
    return v0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasEthernet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2139
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2141
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 2168
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2102
    const/4 v0, 0x0

    return v0
.end method

.method private static hasMobileRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2092
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2094
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2126
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2128
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2158
    const v0, 0x7f040033

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2160
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2161
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 2149
    const v0, 0x7f040066

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2150
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2152
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2153
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 2220
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2221
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2225
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2226
    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2227
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2229
    new-instance v3, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2230
    new-instance v3, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/OriginalSettings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2231
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetailUids:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 855
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 858
    :goto_0
    return v0

    .line 856
    :catch_0
    move-exception v0

    .line 857
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 838
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 3

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1257
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1258
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, subscriberId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1261
    .end local v1           #subscriberId:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .parameter "policy"

    .prologue
    .line 850
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .parameter

    .prologue
    .line 908
    const-string v0, "DataUsage"

    const-string v1, "setAppRestrictBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v1

    .line 911
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v1, v0}, Landroid/net/INetworkPolicyManager;->setUidPolicy(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 918
    return-void

    .line 911
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 913
    :catch_0
    move-exception v0

    .line 914
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to save policy"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setDataRoaming(Z)V
    .locals 3
    .parameter

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 871
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 872
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 873
    return-void

    .line 871
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 843
    const-string v0, "DataUsage"

    const-string v1, "setMobileDataEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 845
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 846
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    .line 847
    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 2
    .parameter "split"

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, subscriberId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-virtual {v1, v0, p1}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 1268
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 2
    .parameter

    .prologue
    .line 822
    const-string v0, "DataUsage"

    const-string v1, "setPolicyLimitBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 824
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    .line 825
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2
    .parameter

    .prologue
    .line 816
    const-string v0, "DataUsage"

    const-string v1, "setPolicyWarningBytes()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->updatePolicy(Z)V

    .line 819
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2247
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2249
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2250
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2238
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2239
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2240
    return-void
.end method

.method private setRestrictBackground(Z)V
    .locals 4
    .parameter

    .prologue
    .line 885
    const-string v0, "DataUsage"

    const-string v1, "setRestrictBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 888
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    return-void

    .line 889
    :catch_0
    move-exception v0

    .line 890
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with policy service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAppDetail()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 744
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 745
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 746
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 748
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 750
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 761
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v2, v12}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 764
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getAppDetailPrimaryUid()I

    move-result v6

    .line 765
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-virtual {v2, v6, v0}, Lcom/android/OriginalSettings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/OriginalSettings/net/UidDetail;

    move-result-object v2

    .line 766
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/OriginalSettings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 769
    iget-object v7, v2, Lcom/android/OriginalSettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 770
    iget-object v7, v2, Lcom/android/OriginalSettings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    .line 771
    iget-object v10, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/OriginalSettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 770
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 756
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0, v12}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 813
    :goto_1
    return-void

    .line 774
    :cond_1
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/OriginalSettings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 779
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 780
    if-eqz v2, :cond_4

    array-length v5, v2

    if-lez v5, :cond_4

    .line 781
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 782
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    aget-object v2, v2, v1

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 786
    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 793
    :goto_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    .line 795
    invoke-static {v3, v6}, Landroid/net/NetworkPolicyManager;->isUidValidForPolicy(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/android/OriginalSettings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 798
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0b0663

    invoke-static {v0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 799
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 800
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0b0664

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 807
    :goto_4
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 785
    goto :goto_2

    .line 789
    :cond_4
    iput-object v12, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 790
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 803
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0b0665

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 811
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    .line 666
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 671
    if-nez v1, :cond_1

    .line 672
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 676
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 679
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 680
    :cond_2
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 682
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBody() with currentTab="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 686
    const-string v2, "mobile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 687
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0b065f

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 688
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0b0654

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 689
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 722
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetailUids:[I

    invoke-static {v2, v3}, Lcom/android/OriginalSettings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;[I)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 726
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 728
    iput-boolean v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    goto/16 :goto_0

    .line 691
    :cond_3
    const-string v2, "3g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 692
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0b0660

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 693
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0b0656

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 695
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 697
    :cond_4
    const-string v2, "4g"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 698
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0b0661

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 699
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0b0655

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 701
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 703
    :cond_5
    const-string v0, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 705
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 707
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifi()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 709
    :cond_6
    const-string v0, "ethernet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 711
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 713
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_1

    .line 716
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 14
    .parameter

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000

    const/4 v11, 0x0

    .line 969
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    .line 970
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->clear()V

    .line 972
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 976
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    if-eqz v0, :cond_8

    .line 977
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    .line 978
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 981
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 982
    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move-wide v9, v12

    .line 983
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v7, v12, v2

    .line 986
    :goto_2
    if-eqz p1, :cond_5

    .line 988
    invoke-static {v7, v8, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v11

    .line 991
    :goto_3
    cmp-long v2, v4, v9

    if-lez v2, :cond_0

    .line 992
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 993
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v12, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 997
    const/4 v0, 0x1

    move-wide v4, v2

    .line 998
    goto :goto_3

    .line 1001
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1004
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v7

    .line 1007
    :goto_5
    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 1008
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 1009
    iget-object v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 1011
    goto :goto_5

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v11}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1018
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;)I

    move-result v3

    .line 1019
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/DataUsageSummary$CycleItem;

    .line 1024
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1025
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1033
    :goto_6
    return-void

    .line 1028
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    .line 1031
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    move-wide v7, v2

    goto/16 :goto_2

    :cond_7
    move-wide v9, v7

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v7, v9

    goto/16 :goto_0
.end method

.method private updateDetailData()V
    .locals 15

    .prologue
    .line 1149
    const-string v0, "DataUsage"

    const-string v1, "updateDetailData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v1

    .line 1152
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v3

    .line 1153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1155
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1157
    const/4 v7, 0x0

    .line 1158
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1161
    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    .line 1162
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1163
    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 1165
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    const/16 v7, 0xaf

    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/widget/PieChartView;->setOriginAngle(I)V

    .line 1167
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/PieChartView;->removeAllSlices()V

    .line 1168
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    const-string v7, "#d88d3a"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v12, v7}, Lcom/android/OriginalSettings/widget/PieChartView;->addSlice(JI)V

    .line 1169
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9, v10, v7}, Lcom/android/OriginalSettings/widget/PieChartView;->addSlice(JI)V

    .line 1171
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/widget/PieChartView;->generatePath()V

    .line 1173
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1179
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1191
    :goto_0
    if-eqz v7, :cond_2

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v9

    .line 1192
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 1193
    const/4 v5, 0x0

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lcom/android/OriginalSettings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v0

    .line 1195
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const v2, 0x7f0b0676

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    return-void

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartData:Lcom/android/OriginalSettings/net/ChartData;

    iget-object v0, v0, Lcom/android/OriginalSettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1187
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/OriginalSettings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1191
    :cond_2
    const-wide/16 v5, 0x0

    goto :goto_1
.end method

.method private updatePolicy(Z)V
    .locals 8
    .parameter "refreshCycle"

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 925
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 926
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 932
    :goto_0
    const-string v3, "mobile"

    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 933
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    .line 934
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 935
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mBinding:Z

    .line 938
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 939
    .local v0, policy:Landroid/net/NetworkPolicy;
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 940
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 941
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    iget-wide v4, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 943
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 944
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/DataUsageSummary;->setRestrictBackground(Z)V

    .line 946
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 947
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 956
    :cond_2
    :goto_2
    if-eqz p1, :cond_3

    .line 958
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 960
    :cond_3
    return-void

    .line 928
    .end local v0           #policy:Landroid/net/NetworkPolicy;
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .restart local v0       #policy:Landroid/net/NetworkPolicy;
    :cond_5
    move v1, v2

    .line 941
    goto :goto_1

    .line 952
    :cond_6
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 953
    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method

.method private updateTabs()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 591
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 592
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 594
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v3

    .line 595
    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->hasMobile4gRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 596
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f0b065c

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 597
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f0b065b

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 601
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f0b0658

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 604
    :cond_1
    iget-boolean v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 605
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f0b0659

    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 608
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    if-le v2, v0, :cond_5

    .line 609
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v0, :cond_6

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 610
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 611
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 613
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateBody()V

    .line 617
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 621
    :cond_3
    return-void

    .line 598
    :cond_4
    invoke-static {v2}, Lcom/android/OriginalSettings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f0b065a

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 608
    goto :goto_1

    .line 609
    :cond_6
    const/16 v1, 0x8

    goto :goto_2

    .line 615
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 261
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 263
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 265
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 267
    const-string v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    .line 269
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 272
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "data_usage"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 274
    new-instance v0, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;-><init>(Landroid/net/INetworkPolicyManager;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    .line 275
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPolicyEditor:Lcom/android/OriginalSettings/net/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/net/NetworkPolicyEditor;->read()V

    .line 277
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_wifi"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 278
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_ethernet"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 281
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 444
    const/high16 v0, 0x7f0f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 445
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 287
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 288
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f04003b

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 290
    .local v2, view:Landroid/view/View;
    new-instance v3, Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-direct {v3, v0}, Lcom/android/OriginalSettings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    .line 292
    const v3, 0x1020012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 293
    const v3, 0x7f080077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 294
    const v3, 0x1020013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 295
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 299
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v3

    const/high16 v6, 0x200

    if-ne v3, v6, :cond_1

    move v1, v4

    .line 301
    .local v1, shouldInset:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 302
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1050025

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    .line 309
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v2, v3, v4}, Lcom/android/OriginalSettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 311
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 312
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 314
    const v3, 0x7f040039

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 315
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 317
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v8, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 318
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 320
    iget v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    if-lez v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    invoke-static {v3, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 323
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    iget v7, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v3, v6, v5, v7, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 328
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f080074

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 330
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f080075

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 332
    new-instance v3, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 333
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v3, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 334
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 335
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    new-instance v3, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    .line 338
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 339
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 340
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v3, v6}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 341
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 342
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 343
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f08006b

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 349
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v6, 0x7f08006c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 350
    new-instance v3, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-direct {v3, v0}, Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    .line 351
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleAdapter:Lcom/android/OriginalSettings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 352
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 354
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f080062

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    .line 355
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChartListener:Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v3, v6}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->setListener(Lcom/android/OriginalSettings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 356
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mChart:Lcom/android/OriginalSettings/widget/ChartDataUsageView;

    invoke-virtual {v3, v8}, Lcom/android/OriginalSettings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 360
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f08006d

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 361
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080004

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 362
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f08006e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 363
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080071

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/widget/PieChartView;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppPieChart:Lcom/android/OriginalSettings/widget/PieChartView;

    .line 364
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f08006f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 365
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080070

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 366
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080073

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 368
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080072

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 369
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    new-instance v3, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 372
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 373
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 374
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v3, v5}, Lcom/android/OriginalSettings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 375
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 376
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 377
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f080076

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 382
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 385
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 387
    new-instance v3, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    iget v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v3, v4, v5}, Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/OriginalSettings/net/UidDetailProvider;I)V

    iput-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    .line 388
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 389
    iget-object v3, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mAdapter:Lcom/android/OriginalSettings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 391
    return-object v2

    .end local v1           #shouldInset:Z
    :cond_1
    move v1, v5

    .line 299
    goto/16 :goto_0

    .line 305
    .restart local v1       #shouldInset:Z
    :cond_2
    iput v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mInsetSide:I

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 552
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 553
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 539
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 540
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 542
    iget-object v0, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/net/UidDetailProvider;->clearCache()V

    .line 543
    iput-object v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mUidDetailProvider:Lcom/android/OriginalSettings/net/UidDetailProvider;

    .line 544
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 485
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v3, v1

    .line 532
    :goto_0
    return v3

    .line 487
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v3

    .line 488
    .local v0, dataRoaming:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 489
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_0

    .end local v0           #dataRoaming:Z
    :cond_0
    move v0, v1

    .line 487
    goto :goto_1

    .line 492
    .restart local v0       #dataRoaming:Z
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->setDataRoaming(Z)V

    goto :goto_0

    .line 497
    .end local v0           #dataRoaming:Z
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 498
    .local v2, restrictBackground:Z
    :goto_2
    if-eqz v2, :cond_4

    .line 499
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->hasLimitedNetworks()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 500
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_0

    .end local v2           #restrictBackground:Z
    :cond_2
    move v2, v1

    .line 497
    goto :goto_2

    .line 502
    .restart local v2       #restrictBackground:Z
    :cond_3
    invoke-static {p0}, Lcom/android/OriginalSettings/DataUsageSummary$DeniedRestrictFragment;->show(Lcom/android/OriginalSettings/DataUsageSummary;)V

    goto :goto_0

    .line 506
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 511
    .end local v2           #restrictBackground:Z
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v3

    .line 512
    .local v1, mobileSplit:Z
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DataUsageSummary;->setMobilePolicySplit(Z)V

    .line 513
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v4

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 514
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 518
    .end local v1           #mobileSplit:Z
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    move v1, v3

    :cond_6
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    .line 519
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "show_wifi"

    iget-boolean v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 520
    iget-boolean v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 521
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 525
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v3

    :cond_7
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    .line 526
    iget-object v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "show_ethernet"

    iget-boolean v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 527
    iget-boolean v4, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 528
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x7f080281
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 450
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 452
    .local v0, appDetailMode:Z
    const v5, 0x7f080281

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    .line 453
    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    move v5, v6

    :goto_0
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 454
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getDataRoaming()Z

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 456
    const v5, 0x7f080282

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 457
    iget-object v8, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    move v5, v6

    :goto_1
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 458
    iget-object v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getRestrictBackground()Z

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 460
    const v5, 0x7f080283

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 461
    .local v4, split4g:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasMobile4gRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    move v5, v6

    :goto_2
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 464
    const v5, 0x7f080284

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 465
    .local v3, showWifi:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 466
    if-nez v0, :cond_3

    move v5, v6

    :goto_3
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 467
    iget-boolean v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 473
    :goto_4
    const v5, 0x7f080285

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 474
    .local v2, showEthernet:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v1}, Lcom/android/OriginalSettings/DataUsageSummary;->hasMobileRadio(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 475
    if-nez v0, :cond_5

    :goto_5
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 476
    iget-boolean v5, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 481
    :goto_6
    return-void

    .end local v2           #showEthernet:Landroid/view/MenuItem;
    .end local v3           #showWifi:Landroid/view/MenuItem;
    .end local v4           #split4g:Landroid/view/MenuItem;
    :cond_0
    move v5, v7

    .line 453
    goto/16 :goto_0

    :cond_1
    move v5, v7

    .line 457
    goto :goto_1

    .restart local v4       #split4g:Landroid/view/MenuItem;
    :cond_2
    move v5, v7

    .line 461
    goto :goto_2

    .restart local v3       #showWifi:Landroid/view/MenuItem;
    :cond_3
    move v5, v7

    .line 466
    goto :goto_3

    .line 469
    :cond_4
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 470
    iput-boolean v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowWifi:Z

    goto :goto_4

    .restart local v2       #showEthernet:Landroid/view/MenuItem;
    :cond_5
    move v6, v7

    .line 475
    goto :goto_5

    .line 478
    :cond_6
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 479
    iput-boolean v6, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mShowEthernet:Z

    goto :goto_6
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 396
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 399
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 400
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/OriginalSettings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 404
    invoke-direct {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->updateTabs()V

    .line 407
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v2, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 413
    .local v1, rp:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_1

    .line 414
    iget-object v2, p0, Lcom/android/OriginalSettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 420
    .end local v1           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_1
    new-instance v2, Lcom/android/OriginalSettings/DataUsageSummary$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/DataUsageSummary$1;-><init>(Lcom/android/OriginalSettings/DataUsageSummary;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/OriginalSettings/DataUsageSummary$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 440
    return-void
.end method
