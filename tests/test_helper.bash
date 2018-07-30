load lib/assertions

export ANDROID_CLI_TEST_DIR="${BATS_TMPDIR}/android-cli"
export ANDROID_CLI_TMP_BIN="${ANDROID_CLI_TEST_DIR}/bin"
export ANDROID_CLI_CWD="${ANDROID_CLI_TEST_DIR}/cwd"

export PATH="${BATS_TEST_DIRNAME}/libexec:$PATH"
export PATH="${BATS_TEST_DIRNAME}/../libexec:$PATH"
export PATH="${ANDROID_CLI_TMP_BIN}:$PATH"

mkdir -p "${ANDROID_CLI_TMP_BIN}"
mkdir -p "${ANDROID_CLI_TEST_DIR}"
mkdir -p "${ANDROID_CLI_CWD}"

setup() {
  cd "${ANDROID_CLI_CWD}"
}

teardown() {
  rm -rf "${ANDROID_CLI_TEST_DIR}"
}
