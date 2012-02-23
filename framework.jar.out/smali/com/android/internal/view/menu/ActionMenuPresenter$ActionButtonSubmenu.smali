.class Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "subMenu"

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 628
    invoke-direct {p0, p2, p3}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 629
    iput-object p3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 631
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 632
    .local v3, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v5

    if-nez v5, :cond_0

    .line 634
    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v5, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 637
    :cond_0
    iget-object v5, p1, Lcom/android/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 639
    const/4 v4, 0x0

    .line 640
    .local v4, preserveIconSpacing:Z
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 641
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 642
    invoke-virtual {p3, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 643
    .local v0, childItem:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 644
    const/4 v4, 0x1

    .line 648
    .end local v0           #childItem:Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 649
    return-void

    .line 634
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #preserveIconSpacing:Z
    :cond_2
    #getter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$200(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 641
    .restart local v0       #childItem:Landroid/view/MenuItem;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v4       #preserveIconSpacing:Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 653
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 654
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$302(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;)Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 655
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 656
    return-void
.end method
