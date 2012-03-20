.class public Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;
.super Landroid/app/Activity;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static FROM:[Ljava/lang/String;

.field static mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field static mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;


# instance fields
.field bytesText:Landroid/widget/TextView;

.field createItem:Landroid/widget/LinearLayout;

.field editText:Landroid/widget/EditText;

.field emptyText:Landroid/widget/FrameLayout;

.field empty_create:Landroid/widget/LinearLayout;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private header:Landroid/view/View;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field istoastshowing:Z

.field listView:Landroid/widget/ListView;

.field private mEdited:I

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:I

.field private mSelectedItemForEdit:I

.field private mState:I

.field private mTempEditString:Ljava/lang/String;

.field private mUpdated:Z

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rejectMsgListID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mUpdated:Z

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->istoastshowing:Z

    .line 434
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$9;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItemForEdit:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateDeleteItems()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->deleteRejectMessage(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateRejectMessage()V

    return-void
.end method

.method private addRejectMessage(Ljava/lang/String;)J
    .locals 7
    .parameter "string"

    .prologue
    const/4 v6, 0x1

    .line 775
    iput v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 776
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 777
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "reject_message"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v4, "edit_checked"

    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 780
    .local v2, new_uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 781
    .local v0, id:J
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "edit_mode"

    iget v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 782
    return-wide v0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 4
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 748
    iget-boolean v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mUpdated:Z

    if-eqz v1, :cond_2

    .line 750
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 754
    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItemForEdit:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 768
    :goto_1
    return v1

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 757
    goto :goto_1

    .line 750
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 764
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 765
    goto :goto_1

    .line 762
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 768
    goto :goto_1
.end method

.method private deleteRejectMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 790
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 791
    return-void
.end method

.method private deleteRejectMessage(I)V
    .locals 5
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 797
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 798
    .local v0, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 799
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 883
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 884
    return-void
.end method

.method private getRejectMessage()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 814
    const-string v5, "_id desc"

    .line 815
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 1011
    const-string v0, "RejectCallWithMsg"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    return-void
.end method

.method private saveRejectMessage(Ljava/lang/String;)V
    .locals 13
    .parameter "resultString"

    .prologue
    const v12, 0x7f0700a1

    const/4 v11, 0x6

    const/4 v6, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 674
    move-object v3, p1

    .line 675
    .local v3, tempString:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 677
    .local v1, id:J
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 681
    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f07009c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    .line 684
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 744
    :goto_1
    return-void

    :cond_0
    move v5, v6

    .line 677
    goto :goto_0

    .line 688
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 690
    invoke-virtual {p0, v12}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    .line 691
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 697
    :cond_2
    const-string v5, " "

    const-string v7, ""

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 699
    invoke-virtual {p0, v12}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->displayToast(Ljava/lang/String;)V

    .line 700
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 704
    :cond_3
    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    if-lez v5, :cond_6

    .line 706
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 707
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v7, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 709
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    iget v7, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 710
    .local v4, update_id:I
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateRejectMessage(Ljava/lang/String;I)V

    .line 711
    iput v9, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    .line 737
    .end local v4           #update_id:I
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 738
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_5

    .line 741
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 742
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 743
    iput v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    goto/16 :goto_1

    .line 716
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    .line 717
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_7

    .line 718
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-le v11, v5, :cond_8

    .line 719
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 720
    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->addRejectMessage(Ljava/lang/String;)J

    move-result-wide v1

    .line 721
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 722
    const-string v5, "RejectCallWithMsg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 730
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v11, :cond_4

    .line 732
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 725
    :cond_8
    const-string v5, "RejectCallWithMsg"

    const-string v7, "max in saveRejectMessage - no add"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private showRejectMessage(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "edit_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 824
    const/4 v2, 0x0

    .line 825
    .local v2, idx:I
    iput v10, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 826
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 829
    :goto_0
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 830
    .local v0, id:J
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 832
    iget v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    if-ne v8, v10, :cond_2

    .line 834
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 835
    .local v4, message:Ljava/lang/String;
    const-string v8, "Edited"

    invoke-direct {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 849
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RejectMsg idx"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Reject Message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 852
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 853
    iget-object v8, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #idx:I
    .local v3, idx:I
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 854
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_3

    move v2, v3

    .line 857
    .end local v0           #id:J
    .end local v3           #idx:I
    .end local v4           #message:Ljava/lang/String;
    .restart local v2       #idx:I
    :cond_0
    const/4 v8, 0x6

    if-le v2, v8, :cond_1

    .line 859
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->deleteRejectMessage()V

    .line 861
    :cond_1
    return-void

    .line 838
    .restart local v0       #id:J
    :cond_2
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 839
    .local v6, resource:I
    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 840
    .restart local v4       #message:Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 841
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "reject_message"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v8, "edit_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    sget-object v8, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 844
    .local v5, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v5, v7, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 845
    const-string v8, "default"

    invoke-direct {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    goto :goto_1

    .end local v2           #idx:I
    .end local v5           #rejectmsgUri:Landroid/net/Uri;
    .end local v6           #resource:I
    .end local v7           #values:Landroid/content/ContentValues;
    .restart local v3       #idx:I
    :cond_3
    move v2, v3

    .end local v3           #idx:I
    .restart local v2       #idx:I
    goto/16 :goto_0
.end method

.method private updateDeleteItems()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, checked_cnt:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1018
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    add-int/lit8 v0, v0, 0x1

    .line 1016
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1022
    :cond_1
    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    if-lez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 1023
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1024
    return-void

    :cond_2
    move v2, v4

    .line 1022
    goto :goto_1

    :cond_3
    move v4, v3

    .line 1023
    goto :goto_2
.end method

.method private updateRejectMessage()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 996
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mState = :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1004
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070053

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/6)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->setTitle(Ljava/lang/CharSequence;)V

    .line 1008
    return-void

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRejectMessage(Ljava/lang/String;I)V
    .locals 6
    .parameter "string"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 802
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 803
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 804
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "reject_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v2, "edit_checked"

    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 806
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 807
    .local v0, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 808
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edit_mode"

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 809
    return-void
.end method

.method private updateTitleBar()V
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070053

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/6)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->setTitle(Ljava/lang/CharSequence;)V

    .line 1031
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 593
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 557
    return-void
.end method

.method public deleteDialog()V
    .locals 3

    .prologue
    .line 961
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 963
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ad

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$20;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ae

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$19;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$19;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$18;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 992
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    .line 888
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 889
    const-string v0, ""

    .line 890
    .local v0, output:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 892
    :pswitch_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 893
    const-string v2, "REJECT_MESSAGE_RESULT_Intent"

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 894
    const-string v2, "EDITED_MESSAGE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 895
    .local v1, resultString:Ljava/lang/String;
    const-string v2, "UPDATED"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mUpdated:Z

    .line 896
    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->saveRejectMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 890
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onClickActionBar()V
    .locals 3

    .prologue
    .line 445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 446
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 448
    const-string v1, "com.android.phone.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->startActivity(Landroid/content/Intent;)V

    .line 450
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->finish()V

    .line 451
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 383
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 384
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f08001a

    const/4 v7, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f030012

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "edit_mode"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 152
    const v3, 0x7f080036

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    .line 155
    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    .line 156
    invoke-virtual {p0, v8}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->empty_create:Landroid/widget/LinearLayout;

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000a

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->header:Landroid/view/View;

    .line 162
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->header:Landroid/view/View;

    const v4, 0x7f080027

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    .line 163
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->header:Landroid/view/View;

    const v4, 0x7f080029

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    .line 164
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->header:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    .line 165
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->header:Landroid/view/View;

    invoke-virtual {v3, v4, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 168
    const v3, 0x7f08000a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    sput-object v3, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 169
    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    sput-object v3, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 171
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->factory:Landroid/view/LayoutInflater;

    .line 172
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->factory:Landroid/view/LayoutInflater;

    const v4, 0x7f030009

    invoke-virtual {v3, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, textEntryView:Landroid/view/View;
    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->editText:Landroid/widget/EditText;

    .line 174
    const v3, 0x7f080025

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->bytesText:Landroid/widget/TextView;

    .line 180
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 189
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v1

    .line 190
    .local v1, cursor:Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->showRejectMessage(Landroid/database/Cursor;)V

    .line 191
    if-eqz v1, :cond_1

    .line 192
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_1
    iput v7, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 196
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 198
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 199
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 202
    :cond_2
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f030013

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 203
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f030014

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    .line 206
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->empty_create:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 296
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 905
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 956
    :goto_0
    return-object v0

    .line 907
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 908
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v4, 0x7f0700af

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const v4, 0x7f0700b2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$16;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 947
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 948
    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayIndexOutOfBoundsException mSelectedItem :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 915
    goto :goto_0

    .line 905
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x8

    .line 490
    sparse-switch p1, :sswitch_data_0

    .line 551
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 492
    :sswitch_1
    iget v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 494
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 495
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateRejectMessage()V

    .line 496
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    sget-object v5, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 499
    const/4 v5, 0x1

    goto :goto_1

    .line 505
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 506
    .local v2, currentView:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    .line 508
    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 510
    .local v1, childView:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 511
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_0

    .line 512
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 513
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "childView view : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 511
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 490
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 456
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 458
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 483
    :cond_0
    :goto_0
    return v0

    .line 461
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->onClickActionBar()V

    goto :goto_0

    .line 464
    :sswitch_1
    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    if-ne v2, v4, :cond_0

    .line 466
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 471
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 472
    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mMultiChoiceAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 475
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mLeftSoftkey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 476
    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v2, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 479
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    goto :goto_0

    .line 458
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 404
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 431
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 407
    :pswitch_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 413
    :pswitch_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 414
    const/4 v0, 0x2

    const v1, 0x7f0700b2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020016

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 419
    :pswitch_2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 426
    :pswitch_3
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v0, 0x1

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 303
    const-string v1, "OnResume"

    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "edit_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mEdited:I

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in onResume = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V

    .line 313
    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_1

    const/4 v0, 0x2

    :cond_1
    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    .line 329
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateTitleBar()V

    .line 330
    return-void

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->createItem:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 316
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 319
    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I

    goto :goto_1

    .line 321
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateDeleteItems()V

    goto :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 562
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$6;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    return-void
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$7;-><init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    return-void
.end method
