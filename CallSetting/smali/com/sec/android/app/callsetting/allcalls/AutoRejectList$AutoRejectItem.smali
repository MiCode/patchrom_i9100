.class public Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;
.super Ljava/lang/Object;
.source "AutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoRejectItem"
.end annotation


# instance fields
.field public checked:I

.field public id:Ljava/lang/String;

.field public reject_num:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "num"
    .parameter "_id"
    .parameter "check"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    .line 248
    iput-object p3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    .line 249
    iput p4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    .line 250
    return-void
.end method
