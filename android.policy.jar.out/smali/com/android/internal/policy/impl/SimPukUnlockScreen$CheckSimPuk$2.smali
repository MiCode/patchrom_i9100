.class Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$2;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$2;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$2;->val$result:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$2;->this$1:Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk$2;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 276
    return-void
.end method
