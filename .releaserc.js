{
    "branches": [
        {
            "name": 'main',
            prerelease: false
        },
        {
            "name": 'releases\/+([0-9])?(\.\d+)(\.\d+|z|$)',
            prerelease: false
        },
        {
            "name": 'next',
            prerelease: true
        },
        {
            name: 'next-major',
            prerelease: true
        }
    ],
        plugins: [
            [
                "@semantic-release/commit-analyzer",
                {
                    "preset": "conventionalcommits",
                    "presetConfig": "conventional-changelog-conventionalcommits"
                }
            ],
            "@semantic-release/release-notes-generator",
            [
                "semantic-release-helm3",
                {
                    chartPath: './chart',
                    registry: 'localhost:5000/repo/chart'
                }
            ]
            [
            "@semantic-release/exec",
            {
                "prepareCmd": './.github/workflows/scripts/prepareHelm.sh ${nextRelease.version}',
                "publishCmd": './.github/workflows/scripts/publishHelm.sh'
            }
            ],
            [
                "@semantic-release/git",
                {
                    "assets": [
                        "charts/container-release-with-help-demo/Chart.yaml"
                    ],
                    "message": "chore(release): ${nextRelease.version}\n\n${nextRelease.notes}"
                }
            ],
            [
                "@semantic-release/github"
            ],
        ]
}