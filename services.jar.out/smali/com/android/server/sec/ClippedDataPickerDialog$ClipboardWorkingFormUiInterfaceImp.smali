.class Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardWorkingFormUiInterfaceImp"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 1798
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1800
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Lcom/android/server/sec/ClippedDataPickerDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1798
    invoke-direct {p0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 1907
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "asBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

    return-object v0
.end method

.method public setClipboardDataListChange(I)V
    .locals 8
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1846
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v0

    .line 1847
    .local v0, currentDataCnt:I
    const/16 v4, 0x14

    if-le v0, v4, :cond_0

    const/16 v0, 0x14

    .line 1849
    :cond_0
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setClipboardDataListChange() mDataCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentDataCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_1
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v4

    if-gt v4, v0, :cond_5

    .line 1851
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v4, v7}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$902(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    .line 1855
    :goto_0
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v4, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1402(Lcom/android/server/sec/ClippedDataPickerDialog;I)I

    .line 1857
    move v1, p1

    .line 1858
    .local v1, flag:I
    if-ne v1, v7, :cond_2

    .line 1859
    sput v0, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    .line 1862
    :cond_2
    const/4 v3, 0x1

    .line 1863
    .local v3, isAllDisabled:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1864
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #calls: Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z
    invoke-static {v4, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1865
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ClipboardServiceEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "some item is not unlocked...index :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_3
    const/4 v3, 0x0

    .line 1871
    :cond_4
    if-eqz v3, :cond_7

    .line 1872
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;
    invoke-static {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1500(Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/TwSlidingDrawer;

    move-result-object v4

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$2;

    invoke-direct {v5, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;)V

    invoke-virtual {v4, v5}, Lcom/android/server/sec/TwSlidingDrawer;->post(Ljava/lang/Runnable;)Z

    .line 1886
    :goto_2
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v4, v4, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$4;

    invoke-direct {v5, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$4;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;)V

    invoke-virtual {v4, v5}, Lcom/android/server/sec/ClippedDataPickerGridView;->post(Ljava/lang/Runnable;)Z

    .line 1903
    return-void

    .line 1853
    .end local v1           #flag:I
    .end local v2           #i:I
    .end local v3           #isAllDisabled:Z
    :cond_5
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v4, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$902(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    goto :goto_0

    .line 1863
    .restart local v1       #flag:I
    .restart local v2       #i:I
    .restart local v3       #isAllDisabled:Z
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1878
    :cond_7
    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Lcom/android/server/sec/TwSlidingDrawer;
    invoke-static {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1500(Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/TwSlidingDrawer;

    move-result-object v4

    new-instance v5, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$3;

    invoke-direct {v5, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$3;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;)V

    invoke-virtual {v4, v5}, Lcom/android/server/sec/TwSlidingDrawer;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V
    .locals 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1822
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "setClipboardDataMgr called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1002(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/IClipboardDataList;)Landroid/sec/clipboard/data/IClipboardDataList;

    .line 1824
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v0

    invoke-interface {v0}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v0

    sput v0, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    .line 1828
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v1

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1402(Lcom/android/server/sec/ClippedDataPickerDialog;I)I

    .line 1829
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClipboardDataMgr() mDataCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1400(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_1
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v1, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 1832
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1833
    return-void
.end method

.method public setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1839
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "setClipboardDataUiEvent(IClipboardDataUiEvent arg0) called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$302(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/IClipboardDataUiEvent;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 1841
    return-void
.end method
