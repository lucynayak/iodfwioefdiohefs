.class public Ldev/virus/variable/app/ScriptManagerActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ldev/virus/variable/app/ScriptManagerActivity;


# direct methods
.method public constructor <init>(Ldev/virus/variable/app/ScriptManagerActivity;)V
    .locals 0

    iput-object p1, p0, Ldev/virus/variable/app/ScriptManagerActivity$g;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object p1, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object p1, Lk2/c;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    const/4 p1, 0x0

    sput-boolean p1, Lk2/c;->e:Z

    iget-object p1, p0, Ldev/virus/variable/app/ScriptManagerActivity$g;->a:Ldev/virus/variable/app/ScriptManagerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    return-void
.end method
