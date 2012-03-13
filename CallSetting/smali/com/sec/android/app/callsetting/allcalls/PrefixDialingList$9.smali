.class Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$9;
.super Ljava/lang/Object;
.source "PrefixDialingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->alertdialogPrefixNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$9;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList$9;->this$0:Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;

    #calls: Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->savePrefixNumber()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;->access$900(Lcom/sec/android/app/callsetting/allcalls/PrefixDialingList;)V

    .line 569
    return-void
.end method
