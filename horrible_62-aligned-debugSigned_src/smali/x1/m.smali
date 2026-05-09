.class public final synthetic Lx1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ldev/virus/variable/app/ScriptManagerActivity;

.field public final synthetic c:Lk2/d;

.field public final synthetic d:Landroid/widget/LinearLayout;

.field public final synthetic e:Landroid/widget/RelativeLayout;


# direct methods
.method public synthetic constructor <init>(Ldev/virus/variable/app/ScriptManagerActivity;Lk2/d;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/m;->b:Ldev/virus/variable/app/ScriptManagerActivity;

    iput-object p2, p0, Lx1/m;->c:Lk2/d;

    iput-object p3, p0, Lx1/m;->d:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lx1/m;->e:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lx1/m;->b:Ldev/virus/variable/app/ScriptManagerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
