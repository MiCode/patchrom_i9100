.class public Lcom/sec/android/app/callsetting/allcalls/BlackList;
.super Landroid/app/Activity;
.source "BlackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;,
        Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;,
        Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static FROM:[Ljava/lang/String;


# instance fields
.field private final DELETE_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private autoreject_maxcount:I

.field private contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;

.field private createItem:Landroid/widget/LinearLayout;

.field private defaultName:Ljava/lang/String;

.field private header:Landroid/view/View;

.field private mAutoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

.field private mAutoRejectItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field mHandler:Landroid/os/Handler;

.field private mHeaderViewCount:I

.field private mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private mListView:Landroid/widget/ListView;

.field private mScreenType:I

.field private mSelectedItem:I

.field private mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private mUpdateScreen:Z

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Landroid/widget/CheckBox;

.field private textAdd:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "reject_checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "reject_match"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->FROM:[Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 94
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    .line 97
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->NORMAL_SCREEN:I

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->DELETE_SCREEN:I

    .line 99
    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    .line 114
    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->defaultName:Ljava/lang/String;

    .line 117
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->QUERY_COMPLETE:I

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mUpdateScreen:Z

    .line 122
    iput-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 124
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$2;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mContentObserver:Landroid/database/ContentObserver;

    .line 657
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->updateDeleteScreenItems()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->deleteAutoRejectNumber(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->updateCreatePanel()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->updateTitleBar()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/callsetting/allcalls/BlackList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/allcalls/BlackList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/callsetting/allcalls/BlackList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/callsetting/allcalls/BlackList;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private callMatchCriteriaToEditNum()V
    .locals 7

    .prologue
    .line 1001
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1003
    .local v3, update_id:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1004
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/String;

    const-string v4, "com.sec.android.app.callsetting"

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v2, pkg_name:Ljava/lang/String;
    const-string v4, ".allcalls.BlackListNumber"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, className:Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    const-string v4, "UPDATE_ID"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1008
    const-string v5, "SELECT_NUMBER"

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    const-string v5, "MATCH_MODE"

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget v4, v4, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->matched:I

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1012
    const-string v4, "UPDATE_MODE"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1013
    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1014
    return-void
.end method

.method private deleteAutoRejectNumber(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 976
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 978
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 979
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1027
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1028
    return-void
.end method

.method private getAutoRejectNumber()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 995
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/BlackList;->FROM:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout()V
    .locals 4

    .prologue
    .line 310
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->header:Landroid/view/View;

    .line 314
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 315
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->header:Landroid/view/View;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAll:Landroid/widget/LinearLayout;

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->header:Landroid/view/View;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAllCheck:Landroid/widget/CheckBox;

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->header:Landroid/view/View;

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->textAdd:Landroid/widget/TextView;

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->textAdd:Landroid/widget/TextView;

    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->header:Landroid/view/View;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->createItem:Landroid/widget/LinearLayout;

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->createItem:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$4;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$5;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->header:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 373
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1043
    const-string v0, "BlackList"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void
.end method

.method private makeScreen()V
    .locals 15

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeScreen : ScreenType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->log(Ljava/lang/String;)V

    .line 432
    const/4 v14, 0x0

    .line 433
    .local v14, idx:I
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 435
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unknown_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 439
    .local v4, unknownMode:I
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    const v1, 0x7f070061

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v4           #unknownMode:I
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getAutoRejectNumber()Landroid/database/Cursor;

    move-result-object v11

    .line 446
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 449
    .local v12, id:J
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, num:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 451
    .local v9, checked:I
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 452
    .local v10, matched:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoRejectNum idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checked ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->log(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    new-instance v5, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    .end local v7           #num:Ljava/lang/String;
    .end local v9           #checked:I
    .end local v10           #matched:I
    .end local v12           #id:J
    :cond_2
    if-eqz v11, :cond_3

    .line 459
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_3
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    if-nez v0, :cond_5

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAll:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 464
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->updateCreatePanel()V

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    if-nez v0, :cond_4

    .line 477
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    .line 479
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectAdapter:Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 480
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->updateTitleBar()V

    .line 481
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->startContactQuery()V

    .line 482
    return-void

    .line 466
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->createItem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAllCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method private startContactQuery()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;Lcom/sec/android/app/callsetting/allcalls/BlackList$1;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;

    .line 207
    const-string v0, "BlackList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;

    invoke-virtual {v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->start()V

    .line 210
    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;->interrupt()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->contactQueryThread:Lcom/sec/android/app/callsetting/allcalls/BlackList$QueryThread;

    .line 217
    :cond_0
    return-void
.end method

.method private updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 6
    .parameter "string"
    .parameter "checked"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 984
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 985
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v2, "reject_checked"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 989
    .local v0, autorejectnumUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 990
    return-void
.end method

.method private updateCreatePanel()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->autoreject_maxcount:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->createItem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->createItem:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDeleteScreenItems()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1031
    const/4 v0, 0x0

    .line 1033
    .local v0, checked_cnt:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    .line 1034
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHeaderViewCount:I

    add-int/2addr v5, v1

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1035
    add-int/lit8 v0, v0, 0x1

    .line 1033
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1037
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-lez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1038
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->selectAllCheck:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v0, v5, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1040
    return-void

    :cond_2
    move v2, v4

    .line 1037
    goto :goto_1

    :cond_3
    move v3, v4

    .line 1038
    goto :goto_2
.end method

.method private updateTitleBar()V
    .locals 3

    .prologue
    const v2, 0x7f07004f

    .line 1047
    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getString(I)Ljava/lang/String;

    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1050
    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    if-nez v1, :cond_0

    .line 1052
    add-int/lit8 v0, v0, -0x1

    .line 1054
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->autoreject_maxcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->setTitle(Ljava/lang/CharSequence;)V

    .line 1057
    return-void
.end method


# virtual methods
.method public deleteDialog()V
    .locals 4

    .prologue
    .line 526
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    .local v0, DeleteDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07003e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700ad

    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$11;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700ae

    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$10;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 548
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/BlackList$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$12;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 556
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    .line 957
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 959
    packed-switch p1, :pswitch_data_0

    .line 970
    :cond_0
    :goto_0
    return-void

    .line 961
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 959
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onClickActionBar()V
    .locals 2

    .prologue
    .line 583
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/callsetting/allcalls/AutoReject;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 584
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->startActivity(Landroid/content/Intent;)V

    .line 587
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->finish()V

    .line 588
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 561
    const-string v0, "changed "

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->log(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 222
    const-string v1, "BlackList"

    const-string v2, "onCreate "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_maxcount"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->autoreject_maxcount:I

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->defaultName:Ljava/lang/String;

    .line 226
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->setContentView(I)V

    .line 227
    if-eqz p1, :cond_0

    .line 228
    const-string v1, "blacklist_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->initLayout()V

    .line 231
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->makeScreen()V

    .line 232
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    .line 485
    packed-switch p1, :pswitch_data_0

    .line 521
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 487
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    .local v0, EditDeleteDialog:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const v4, 0x7f0700af

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0700b2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 491
    .local v2, items:[Ljava/lang/CharSequence;
    const-string v3, "BlackList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;

    iget-object v3, v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 496
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$8;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 514
    .local v1, edad:Landroid/app/AlertDialog;
    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/BlackList$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$9;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 246
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 603
    sparse-switch p1, :sswitch_data_0

    .line 654
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    :goto_1
    return v4

    .line 605
    :sswitch_0
    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    if-ne v5, v4, :cond_0

    .line 606
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    .line 607
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->makeScreen()V

    goto :goto_1

    .line 614
    :sswitch_1
    const/4 v2, 0x0

    .line 622
    .local v2, currentView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .end local v2           #currentView:Landroid/widget/ListView;
    check-cast v2, Landroid/widget/ListView;

    .line 625
    .restart local v2       #currentView:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 626
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 628
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 629
    const v4, 0x7f080017

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 631
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {v0}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_0

    .line 634
    :cond_1
    const v4, 0x7f08001a

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 636
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 638
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    .line 640
    :cond_2
    const v4, 0x7f080027

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #linearLayout:Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 642
    .restart local v3       #linearLayout:Landroid/widget/LinearLayout;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_0

    .line 603
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 591
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 600
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 593
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->onClickActionBar()V

    goto :goto_0

    .line 596
    :sswitch_1
    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    .line 597
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->makeScreen()V

    goto :goto_0

    .line 591
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 291
    const-string v0, "BlackList"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v0, "on pause got called"

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->log(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->stopContactQuery()V

    .line 296
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 566
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 567
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mScreenType:I

    packed-switch v0, :pswitch_data_0

    .line 579
    :cond_0
    :goto_0
    return v2

    .line 569
    :pswitch_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mAutoRejectItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 571
    const v0, 0x7f0700b2

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 576
    :pswitch_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "inState"

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 260
    const-string v0, "BlackList"

    const-string v1, "onRestoreInstanceState "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-eqz p1, :cond_0

    .line 263
    const-string v0, "blacklist_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    .line 265
    :cond_0
    const-string v0, "BlackList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 271
    const-string v0, "BlackList"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mUpdateScreen:Z

    if-eqz v0, :cond_1

    .line 275
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->removeDialog(I)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->makeScreen()V

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mUpdateScreen:Z

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList;->startContactQuery()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 251
    const-string v0, "BlackList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v0, "blacklist_id"

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$6;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 417
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/BlackList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/BlackList$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/BlackList$7;-><init>(Lcom/sec/android/app/callsetting/allcalls/BlackList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    return-void
.end method
