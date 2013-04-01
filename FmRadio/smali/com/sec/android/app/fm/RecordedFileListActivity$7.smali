.class Lcom/sec/android/app/fm/RecordedFileListActivity$7;
.super Landroid/widget/CursorAdapter;
.source "RecordedFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RecordedFileListActivity;->setAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RecordedFileListActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$7;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "v"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 522
    const v3, 0x7f07008e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 523
    .local v2, name:Landroid/widget/TextView;
    const-string v3, "title"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    const v3, 0x7f07008f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 526
    .local v0, date:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$7;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    const-string v4, "date_modified"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getDateFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    const v3, 0x7f070090

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 529
    .local v1, duration:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/sec/android/app/fm/RecordedFileListActivity$7;->this$0:Lcom/sec/android/app/fm/RecordedFileListActivity;

    const-string v4, "duration"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/fm/RecordedFileListActivity;->getTimeFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "parent"

    .prologue
    .line 534
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 535
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 536
    .local v1, v:Landroid/view/View;
    return-object v1
.end method
