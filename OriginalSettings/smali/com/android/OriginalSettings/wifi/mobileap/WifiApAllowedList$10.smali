.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$10;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$800(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V

    .line 324
    return-void
.end method
