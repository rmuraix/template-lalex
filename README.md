# LaTeX Template (template-lalex)

devcontainerを使用する日本語の論文・レポート向けLaTeXテンプレート.

## File Structure

```
src/
├── main_template.tex     # メインテンプレート（雛形）
├── main.tex              # 使用例（サンプル）
├── references/
│   └── refs.bib          # 参考文献データベース（BibLaTeX形式）
├── style/                # カスタムスタイルファイル
└── .latexmkrc            # latexmk設定ファイル
```

### Sample Files

- **main.tex**: フォーマットのサンプル
- **refs.bib**: 参考文献のサンプルエントリが含まれている　`\cite{キー名}` で本文中から引用可能

## Build

ビルドは `src` ディレクトリ内で行います.まず `src` に移動してください.

```bash
cd src
```

ビルド例:

- テンプレートをビルド

```bash
latexmk main.tex
```

注意: このテンプレートのサンプル（`main.tex`）は `ltjsarticle` と `luatexja` を利用しており、LuaTeX（`lualatex`）でのコンパイルが必要です. デフォルトで `latexmk` が `lualatex` を使うように、リポジトリの `src/.latexmkrc` を設定しています.

明示的に `lualatex` を指定する例:

```bash
latexmk -pdf -pdflatex="lualatex %O %S" main.tex
```

また、`biber` が必要です（`biblatex` を使用しているため）.TeX Live の標準インストールであれば通常含まれます.

クリーン（中間ファイルの削除）:

```bash
latexmk -C
```

## Contributing

Your contribution is always welcome. Please read [Contributing Guide](https://github.com/rmuraix/.github/blob/main/.github/CONTRIBUTING.md).
